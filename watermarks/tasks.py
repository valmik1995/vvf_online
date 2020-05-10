from __future__ import absolute_import, unicode_literals
import os
import time
import subprocess
from celery import shared_task, current_task
from django.conf import settings
from watermarks.models import Photo
from PIL import Image
from time import sleep

@shared_task
def add(x, y):
    return x + y

@shared_task
def increment(Limit, wait_time=0.5):
    for cnt in range(Limit):
        current_task.update_state(
                state="PROGRESS",
                meta={
                    'iteration': cnt,
                    'status': 'INCREMENTING...',
                    }
                )
        print ("Counter: {}".format(cnt))
        time.sleep(wait_time)


@shared_task(bind=True)
def photo_watermark(self):
    path = Photo.objects.all()
    for star in path.iterator():
        input_file_path = star.file.path
        input_file_name = star.file.name
        filename = os.path.basename(input_file_path)

        output_file_name = os.path.join('watermarks', '{}'.format(filename))
        output_file_path = os.path.join(settings.MEDIA_ROOT, output_file_name)
        watermark = '/Users/valmik/PycharmProjects/vvf_online/media/watermarks/IMG_4156.PNG'

        # subprocess.call(['/usr/local/bin/convert', input_file_path, '-resize', '64x64', output_file_path])
        def create_watermark(image_path, final_image_path, watermark):
            main = Image.open(image_path)
            mark = Image.open(watermark)

            # Trasparenza Logo
            # mask = mark.convert('L').point(lambda x: min(x, 25))
            # mark.putalpha(mask)

            mark_width, mark_height = mark.size
            main_width, main_height = main.size
            aspect_ratio = mark_width / mark_height
            orientation = main_width / main_height

            if orientation > 1:
                basewidth = 1024
                wpercent = (basewidth / float(main.size[0]))
                hsize = int((float(main.size[1]) * float(wpercent)))
                new_mark_width = main_width * 0.25
            else:
                basewidth = 682
                wpercent = (basewidth / float(main.size[0]))
                hsize = int((float(main.size[1]) * float(wpercent)))
                new_mark_width = main_width * 0.35


            mark.thumbnail((new_mark_width, new_mark_width / aspect_ratio), Image.ANTIALIAS)
            mark_width, mark_height = mark.size
            wt_width = main_width - mark_width


            transparent = Image.new('RGB', main.size, (0,0,0,0))
            transparent.paste(main, (0,0))
            transparent.paste(mark, (wt_width,0), mask=mark)
            transparent2 = transparent.resize((basewidth,hsize), Image.ANTIALIAS)
            transparent2.save(final_image_path,'PNG', dpi=[300,300])



        create_watermark(input_file_path, output_file_path, watermark)

        # Save the new file in the database
        change = Photo.objects.get(id = star.id)
        change.file_watermark = output_file_name
        change.save()

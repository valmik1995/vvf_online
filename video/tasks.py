import os
import subprocess
from celery import shared_task
from django.conf import settings
from video.models import Video


@shared_task
def video_720(id, height):
        width = int(height * 16/9)
        video = Video.objects.get(id= id)
        watermark = '/Users/valmik/PycharmProjects/vvf_online/media/watermarks/IMG_4156.PNG'
        input_file_path = video.video.path
        input_file_name = video.video.name

        filename = os.path.basename(input_file_path)

        # path to the new file, change it according to where you want to put it
        output_file_name = os.path.join('video/watermark', '{}'.format(filename))
        output_file_path = os.path.join(settings.MEDIA_ROOT, output_file_name)

        # subprocess.call(['/usr/local/bin/ffmpeg', '-i', input_file_path, '-s', '{}x{}'.format(width, height), '-vcodec', 'mpeg4', '-b:v', '10000k', output_file_path])
        subprocess.call([
        "/usr/local/bin/ffmpeg",
        "-i",
        input_file_path,
        "-i",
        watermark,
        "-filter_complex",
        "overlay=(main_w-overlay_w)/2:(main_h-overlay_h)/2",
        '-s',
        '{}x{}'.format(width, height),
        '-vcodec',
        'mpeg4',
        '-b:v',
        '10000k',
        output_file_path
        ])


        # Save the new file in the database
        video.video_720.name = output_file_name
        video.save(update_fields=['video_720'])

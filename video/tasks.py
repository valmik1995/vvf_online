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
        if height == 720:
            bitrate = '4000k'
        else:
            bitrate = '10000k'

        input_file_path = video.video.path
        input_file_name = video.video.name

        filename = os.path.basename(input_file_path)

        # path to the new file, change it according to where you want to put it
        output_file_name = os.path.join('video/watermark', '{}'.format(filename))
        output_file_path = os.path.join(settings.MEDIA_ROOT, output_file_name)

        # subprocess.call(['/usr/local/bin/ffmpeg', '-i', input_file_path, '-s', '{}x{}'.format(width, height), '-vcodec', 'mpeg4', '-b:v', '10000k', output_file_path])
        subprocess.call(['ffmpeg',
        '-i', input_file_path,
        '-i', watermark,
        '-filter_complex',
        '[1:v][0:v]scale2ref=({}/{})*ih/1/sar:ih/1[wm][base];[base][wm]overlay=10:10'.format(width, height),
        '-s',
        '{}:{}'.format(width, height),
        '-vcodec',
        'libx264',
        '-b:v', bitrate,
        output_file_path
        ])


        # Save the new file in the database
        video.video_720.name = output_file_name
        video.save(update_fields=['video_720'])

@shared_task
def watermark(id):
    video = Video.objects.get(id= id)
    input_01 = video.video.path
    input_01_name = video.video.name
    filename = os.path.basename(input_01)

    # SALVARE NEL DATABASE NON IL PERCORSO ASSOLUTO
    output_file_name = os.path.join('video/watermark', '{}'.format(filename))

    # SUBPROCESS OUTPUT INVECE PERCORSO ASSOLUTO PER SALVARE
    output = os.path.join(settings.MEDIA_ROOT, output_file_name)


    # input_01 = '/Users/valmik/Downloads/VID_20200425_163715.mp4'
    input ='/Users/valmik/Downloads/FFmpegProject.mp4'
    watermark = '/Users/valmik/PycharmProjects/vvf_online/media/watermarks/logo.png'
    scaled = '/Users/valmik/Pictures/scaled.png'
    # output = '/Users/valmik/Downloads/FFmpeg-Codino.mp4'
    codino = '/Users/valmik/PycharmProjects/vvf_online/media/watermarks/CoEmSicurezza.mov'

    width = 1280
    height = int(width/16*9)

    if width == 1920:
        bitrate = '10000k'
    else:
        bitrate = '4000k'


    subprocess.call(['ffmpeg',
    '-y', '-loglevel', 'warning', '-i',
    input_01,
    '-i', watermark,
    '-i', codino,
    '-f', 'lavfi', '-t', '0.1', '-i', 'anullsrc', #TRACCIA FITTIZIA AUDIO [3:a]
    '-filter_complex',
    '[0:v] scale=w={0}:h={1}, setsar=1 [video-scaled]; \
    [2:v] scale=w={0}:h={1}, setsar=1 [video2]; \
    [video-scaled][1:v]overlay=0:0 [video0]; \
    [video0][0:a][video2][3:a] concat=n=2:v=1:a=1[v][a]'.format(width, height),
    '-map', '[v]',
    '-map', '[a]',
    '-crf', '18',
    '-preset', 'veryfast', '-f', 'mp4',
    output
    ])

    # Save the new file in the database
    video.video_720.name = output_file_name
    video.save(update_fields=['video_720'])

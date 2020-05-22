import os
import subprocess
from celery import shared_task
from django.conf import settings
from video.models import Video


@shared_task
def video_720(id, height):
        width = int(height * 16/9)
        video = Video.objects.get(id= id)
        watermark = '/home/adirimini/vpodrini/project/media/watermarks/IMG_4156.PNG'
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
    input = video.video.path
    input_name = video.video.name
    filename = os.path.basename(input)

    # SALVARE NEL DATABASE NON IL PERCORSO ASSOLUTO
    output_file_name = os.path.join('video/watermark', '{}'.format(filename))

    # SUBPROCESS OUTPUT INVECE PERCORSO ASSOLUTO PER SALVARE
    output = os.path.join(settings.MEDIA_ROOT, output_file_name)
    codino = '/home/adirimini/vpodrini/project/media/watermarks/CoEmCoronavirus.mov'

    width = int(video.formato)
    height = int(width/16*9)
    posizione = video.posizione
    codin = video.codino
    logo = video.logo

    if width == 1920:
        bitrate = '10000k'
    else:
        bitrate = '4000k'

    if posizione == 'ORIZ' and codin == 'CODIN' and logo == 'LOGO':
        watermark = '/home/adirimini/vpodrini/project/media/watermarks/logo.png'
        subprocess.call(['ffmpeg',
        '-y', '-loglevel', 'warning', '-i',
        input,
        '-i', watermark,
        '-i', codino,
        '-f', 'lavfi', '-t', '0.1', '-i', 'anullsrc', #TRACCIA FITTIZIA AUDIO [3:a]
        '-filter_complex',
        '[0:v] scale=w={0}:h={1}, setsar=1 [video-scaled]; \
        [1:v] scale=w={0}:h={1}, setsar=1 [wm-watermarks]; \
        [2:v] scale=w={0}:h={1}, setsar=1 [video2]; \
        [video-scaled][wm-watermarks]overlay=0:0 [video0]; \
        [video0][0:a][video2][3:a] concat=n=2:v=1:a=1[v][a]'.format(width, height),
        '-map', '[v]',
        '-map', '[a]',
	'-crf', '18',
	'-preset', 'veryfast',
	'-f', 'mp4',
	'-strict', '-2',
        output
        ])
    elif posizione == 'VERT'and codin == 'CODIN' and logo == 'LOGO':
        watermark = '/home/adirimini/vpodrini/project/media/watermarks/logo_vertical.png'
        subprocess.call(['ffmpeg',
        '-y', '-loglevel', 'warning', '-i',
        input,
        '-i', watermark,
        '-i', codino,
        '-f', 'lavfi', '-t', '0.1', '-i', 'anullsrc', #TRACCIA FITTIZIA AUDIO [3:a]
        '-filter_complex',
        '[0:v] split=2 [video0-1][video0-2]; \
        [video0-1] scale=w={0}:h={1},boxblur=luma_radius=min(h\,w)/20:luma_power=1:chroma_radius=min(cw\,ch)/20:chroma_power=1, setsar=1  [bg0]; \
        [video0-2] scale=-1:{1}, setsar=1 [video0-2-scaled]; \
        [bg0][video0-2-scaled] overlay=x=(W-w)/2:y=(H-h)/2 [video-scaled]; \
        [1:v] scale=w={0}:h={1}, setsar=1 [video-watermarks]; \
        [2:v] scale=w={0}:h={1}, setsar=1 [video2]; \
        [video-scaled][video-watermarks]overlay=0:0 [video0]; \
        [video0][0:a][video2][3:a] concat=n=2:v=1:a=1[v][a]'.format(width, height),
        '-map', '[v]',
        '-map', '[a]',
        '-crf', '18',
        '-preset', 'veryfast',
        '-f', 'mp4',
        '-strict', '-2',
        output
        ])
    elif posizione == 'ORIZ' and codin == 'SENZA' and logo == 'LOGO':
        watermark = '/home/adirimini/vpodrini/project/media/watermarks/logo.png'
        subprocess.call(['ffmpeg',
        '-i', input,
        '-i', watermark,
        '-filter_complex',
        '[0:v] scale=w={0}:h={1}, setsar=1 [video-scaled]; \
        [1:v] scale=w={0}:h={1}, setsar=1 [wm-scaled]; \
        [video-scaled][wm-scaled]overlay=0:0'.format(width, height),
        '-crf', '18',
        '-preset', 'veryfast',
        '-f', 'mp4',
        '-strict', '-2',
        output
        ])
    elif posizione == 'VERT' and codin == 'SENZA' and logo == 'LOGO':
        watermark = '/home/adirimini/vpodrini/project/media/watermarks/logo_vertical.png'
        subprocess.call(['ffmpeg',
        '-i', input,
        '-i', watermark,
        '-filter_complex',
        '[0:v] split=2 [video0-1][video0-2]; \
        [video0-1] scale=w={0}:h={1},boxblur=luma_radius=min(h\,w)/20:luma_power=1:chroma_radius=min(cw\,ch)/20:chroma_power=1, setsar=1 [bg0]; \
        [video0-2] scale=-1:{1}, setsar=1 [video0-2-scaled]; \
        [1:v] scale=w={0}:h={1}, setsar=1 [wm-scaled]; \
        [bg0][video0-2-scaled] overlay=x=(W-w)/2:y=(H-h)/2 [video-scaled]; \
        [video-scaled][wm-scaled]overlay=0:0'.format(width, height),
        '-crf', '18',
        '-preset', 'veryfast',
        '-f', 'mp4',
        '-strict', '-2',
        output
        ])
    elif posizione == 'ORIZ' and codin == 'CODIN' and logo == 'SENZ':
        subprocess.call(['ffmpeg',
        '-y', '-loglevel', 'warning',
        '-i', input,
        '-i', codino,
        '-f', 'lavfi', '-t', '0.1', '-i', 'anullsrc', #TRACCIA FITTIZIA AUDIO [3:a]
        '-filter_complex',
        '[0:v] scale=w={0}:h={1}, setsar=1 [video-scaled]; \
        [1:v] scale=w={0}:h={1}, setsar=1 [video1]; \
        [video-scaled][0:a][video1][2:a] concat=n=2:v=1:a=1[v][a]'.format(width, height),
        '-map', '[v]',
        '-map', '[a]',
        '-crf', '18',
        '-preset', 'veryfast',
        '-f', 'mp4',
        '-strict', '-2',
        output
        ])
    else:
        pass

    # Save the new file in the database
    video.video_720.name = output_file_name
    video.save(update_fields=['video_720'])

import os
import magic
from django.conf import settings
from django.core.files.storage import default_storage
from django.core.files.base import ContentFile
from django.core.exceptions import ValidationError

# def validate_is_jpeg(file):
#     valid_mime_types = ['image/jpeg']
#     file_mime_type = magic.from_buffer(file.read(1024), mime=True)
#     if file_mime_type not in valid_mime_types:
#         raise ValidationError('Unsupported file type.')
#     valid_file_extensions = ['.jpeg']
#     ext = os.path.splitext(file.name)[1]
#     if ext.lower() not in valid_file_extensions:
#         raise ValidationError('Unacceptable file extension.')


# def validate_file_type(upload):
#     # Make uploaded file accessible for analysis by saving in tmp
#     tmp_path = 'tmp/%s' % upload.name[2:]
#     default_storage.save(tmp_path, ContentFile(upload.file.read()))
#     full_tmp_path = os.path.join(settings.MEDIA_ROOT, tmp_path)
#     # Get MIME type of file using python-magic and then delete
#     file_type = magic.from_file(full_tmp_path, mime=True)
#     default_storage.delete(tmp_path)
#     # Raise validation error if uploaded file is not an acceptable form of media
#     if file_type not in settings.IMAGE_TYPES:
#         raise ValidationError('File type not supported. JPEG, PNG.')



class MimetypeValidator(object):
	def __init__(self, mimetypes):
		self.mimetypes = mimetypes

	def __call__(self, value):
		try:
			mime = magic.from_buffer(value.read(1024), mime=True)
			if not mime in self.mimetypes:
				raise ValidationError('%s is not an acceptable file type' % value)
		except AttributeError as e:
			raise ValidationError('This value could not be validated for file type' % value)

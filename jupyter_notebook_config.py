# Configuration file for jupyter-notebook.
import os

from s3contents import S3ContentsManager

c = get_config()

token = os.getenv('NOTEBOOK_TOKEN', "")
s3_bucket = os.getenv('NOTEBOOK_S3_BUCKET', "")
s3_prefix = os.getenv('NOTEBOOK_S3_PREFIX', "notebooks/test")

# Get all the conf from env
if token:
    c.NotebookApp.token = token

if s3_bucket:
    c.NotebookApp.contents_manager_class = S3ContentsManager
    c.S3ContentsManager.bucket_name = s3_bucket
    c.S3ContentsManager.prefix = s3_prefix

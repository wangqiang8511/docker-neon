# Introduction

This docker image contains neon compiled with mkl and cuda 9

# How to use

Start a jupyter server

```
docker run -d -p 8888:8888 wangqiang8511/neon:cuda9-latest
```

Start a jupyter server with s3 backup and customized token

```
docker run -d -p 8888:8888 -e NOTEBOOK_TOKEN=hello -e NOTEBOOK_S3_BUCKET=xxx -e NOTEBOOK_S3_PREFIX=xxx wangqiang8511/neon:cuda9-latest
```

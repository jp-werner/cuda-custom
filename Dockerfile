FROM nvidia/cuda:11.8.0-cudnn8-runtime-ubuntu22.04

RUN apt-get update \
 && apt-get upgrade \
 && apt-get install -y \
    python3-dev python3-venv libsndfile1 ffmpeg wget curl build-essential \
    && rm -rf /var/lib/apt/lists/*

CMD ["/bin/sh", "-c", "sleep", "inf"]

FROM nvidia/cuda:12.1.0-devel-ubuntu22.04

RUN apt-get update && \
    apt-get install -y --no-install-recommends \
        curl \
        unzip \
        git \
        python3 \
        python3-venv \
        python3-pip \
        python3-packaging && \
        apt-get clean && \
        rm -rf /var/lib/apt/lists/*
WORKDIR /src

# torch and torchvision
COPY requirements.txt .
RUN pip3 install -r requirements.txt

# transformers and friends
COPY training-requirements.txt .
RUN pip3 install -r training-requirements.txt

WORKDIR /work
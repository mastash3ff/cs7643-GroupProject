
FROM nvcr.io/nvidia/pytorch:22.03-py3

# avoid tzdata interactive prompt
ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y ffmpeg libsm6 libxext6 git ninja-build libglib2.0-0 libsm6 libxrender-dev libxext6 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Install MMCV
#RUN pip install --no-cache-dir --upgrade pip wheel setuptools

# If using an NVIDIA RTX 3XXX card, it may be necessary to build/install with special flags.
# For example, prepend 'TORCH_CUDA_ARCH_LIST=8.6' to the below pip command for RTX 3080ti
# See https://github.com/open-mmlab/mmdetection/tree/master/docs/en
#RUN TORCH_CUDA_ARCH_LIST=8.6 pip install --no-cache-dir mmcv-full

# Install MMDetection
#RUN conda clean --all
#RUN git clone https://github.com/open-mmlab/mmdetection.git /mmdetection
#WORKDIR /mmdetection
#ENV FORCE_CUDA="1"
#RUN pip install --no-cache-dir -r requirements/build.txt
#RUN pip install --no-cache-dir -e .

RUN pip install git+https://github.com/vahidk/tfrecord.git

# Pytorch Image Models - bleeding edge
RUN pip install git+https://github.com/rwightman/pytorch-image-models.git

RUN mkdir /src/
WORKDIR /src/

RUN git clone https://github.com/facebookresearch/dino /src/


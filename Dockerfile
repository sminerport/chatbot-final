FROM nvidia/cuda:11.2.0-cudnn8-runtime-ubuntu20.04

RUN apt update && \
	apt install --no-install-recommends -y software-properties-common && \
	add-apt-repository -y ppa:deadsnakes/ppa && \
	apt install --no-install-recommends -y python3.9 python3-pip && \
	apt clean && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY . .

EXPOSE 5000

CMD [ "python3" , "app.py", "--host=0.0.0.0" ]

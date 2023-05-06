FROM python:3.11
ENV TZ=Asia/Tokyo
ENV PYTHONUNBUFFERED 1
# pycを生成しないようにする設定
ENV PYTHONDONTWRITEBYTECODE 1
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt \
    && apt update -y \
    # nodejsのインストール
    && curl -fsSL https://deb.nodesource.com/setup_16.x | bash - \
    && apt install -y nodejs
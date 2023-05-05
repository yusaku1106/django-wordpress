FROM python:3.11
ENV PYTHONUNBUFFERED 1
# pycを生成しないようにする設定
ENV PYTHONDONTWRITEBYTECODE 1
RUN mkdir /code
WORKDIR /code
ADD requirements.txt /code/
RUN pip install -r requirements.txt
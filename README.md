# Django Template
Dockerを使用したDjangoアプリケーションのテンプレート

# 使用方法
## プロジェクト、アプリケーションの作成
```
# pythonコンテナを起動し、bashでログイン
docker-compose run --rm python /bin/bash

# Djangoプロジェクトの作成
django-admin startproject {プロジェクト名} .

# Djangoアプリケーションの作成
python manage.py startapp {アプリケーション名}

# インストールしたDjangoのバージョン情報をrequirements.txtに転記し固定
pip freeze > requirements.txt
```

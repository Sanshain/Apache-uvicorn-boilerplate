## Apache django sample config

Шаблон настройки веб-сервера Apache под Windows для Django (подходит так же для работы через uvicorn/gunicorn)

### Особенности настройки в Windows:

Все скрипты настроены для развертывания простого приложения под управлением ОС Windows (смотрите папку "Windows" ). Шаги:
- Запустить `install__service.cmd` от имени администратора
- Запустить `static.cmd` из корня проекта и скопировать туда путь к папке static приложения
- Для настройки доступности media-файлов так же необходимо отредактировать файл `Apache24/conf/extra/wsgi-alias.conf`, изменив значение переменной `MEDIA_PATH` на свое
- Запустить скрипт `service_run.cmd` имени администратора. В случае ошибки службы запустить `run.cmd` и смотреть ошибку в консоли, а так же по пути `Apache24/logs/error.log`.

### Attention:

- Configured not for production

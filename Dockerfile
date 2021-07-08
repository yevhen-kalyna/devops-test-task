FROM yevhenkalyna/trustonic-devops-test:latest

ENV APP_HOME=/app/
ENV FLASK_APP=/app/app.py
EXPOSE 80

COPY app.py $APP_HOME
COPY nginx.conf /etc/nginx/conf.d/nginx.conf
COPY 40-run-flask.sh /docker-entrypoint.d/

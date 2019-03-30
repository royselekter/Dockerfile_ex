FROM alpine:3.9

MAINTAINER roy <selektod@gmail.com>

CMD ["/bin/sh"]

COPY app /app

WORKDIR /app

RUN apk add --no-cache python3 \
    && pip3 install --upgrade pip \
    && pip install -r requirments.txt

EXPOSE 5000

ENTRYPOINT ["python3"]

CMD ["app.py"]

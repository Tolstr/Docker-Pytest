FROM python:3.8.4-alpine3.12
RUN apk add --update \
    curl \
    bash \
    && rm -rf /var/cache/apk/*;
COPY . .
RUN pip install -r requirements.txt
RUN pytest -vs test_one.py
CMD tail -f /dev/null


FROM alpine

LABEL maintainer blawrence

RUN apk add --update python py-pip git

RUN pip install --upgrade pip requests

ADD auto-monitor.py /
ADD time_diff.py /

CMD python auto-monitor.py

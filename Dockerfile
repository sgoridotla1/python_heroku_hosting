FROM python:3.8-slim-buster

#----------------------------- 2
RUN pip install cloudscraper
RUN pip install beautifulsoup4
RUN pip install loguru
RUN pip install pyuseragents
RUN mkdir -p /test
WORKDIR /test
COPY attack.py /test/
CMD python attack.py
#----------------------------- 2

FROM python:2

WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY infinite-campus-grade-scraper .

CMD [ "python", "./scraper.py", "-p" ]
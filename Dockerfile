FROM python:3.10-slim

WORKDIR /app

COPY app.py requirements.txt ./
COPY wheelhouse/ /wheels/

RUN pip install \
      --no-index \
      --find-links=/wheels \
      -r requirements.txt

CMD ["python", "app.py"]

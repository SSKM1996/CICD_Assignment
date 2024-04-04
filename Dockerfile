
FROM jupyter/scipy-notebook

COPY requirements.txt ./requirements.txt
COPY train.py ./train.py
COPY test.py ./test.py
COPY data ./data

RUN pip install -r requirements.txt

RUN python3 train.py

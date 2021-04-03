FROM python:3.8

RUN mkdir /opt/streamlit/
WORKDIR /opt/streamlit/
ADD requirements.txt ./
ADD src ./src
RUN pip install --upgrade pip
RUN pip install -r requirements.txt --use-feature=2020-resolver

ENV PYTHONPATH=$PYTHONPATH:/opt/streamlit/

CMD streamlit run src/app.py
FROM python:3.12

COPY . /app
WORKDIR /app

RUN pip install --upgrade pip
RUN pip install jupyter
RUN pip install pandas

EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]

FROM python
ADD python/* /code/
WORKDIR /code
RUN pip install --upgrade pip
RUN pip install mysql-connector-python
CMD ["python3", "app.py"]

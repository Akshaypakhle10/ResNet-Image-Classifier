#use python as base image
FROM python:3.7.3-stretch

#COPY requirements.txt /tmp/

#RUN pip install -r /tmp/requirements.txt

#RUN useradd --create-home appuser

#WORKDIR /home/appuser
#USER appuser

#COPY app.py .

#CMD [ "python", "./app.py" ]

#use working directory /app
WORKDIR /app

#Copy all the content of current directory to /app
ADD . /app

#Installing reqd packages
RUN pip install --trusted-host pypi.python.org -r requirements.txt

#Open port 5000
EXPOSE 5000

#Set Env variable
ENV NAME OpentoAll

#Run python prog.
CMD ["python","./app.py"]

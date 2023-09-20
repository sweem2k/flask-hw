#base image we want to specify the exact version vs just using latest
#to make sure we have consistancey accross image builds
FROM python:3-alpine3.18

#app directory
WORKDIR /flask-hw

#copy all files in current directory to image app directory
COPY . /flask-hw

#install all libs from the venv
RUN pip install -r requirements.txt

#this is more for documentation at this point
EXPOSE 3333

#run the python app
CMD ["python", "./app.py"]



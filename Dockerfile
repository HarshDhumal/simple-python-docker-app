#pulling base image
FROM python:3.11-slim

#create the working directory
WORKDIR /app

#copy src file from host-directory to working-directory
COPY src/test.py /app/test.py

#compile app code
RUN test.py

#run app
CMD ["python", "test"]


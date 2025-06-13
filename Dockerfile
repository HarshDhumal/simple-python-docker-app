#pulling base image
FROM python:3.11-slim

#create the working directory
WORKDIR /app

#copy src file from host-directory to working-directory
COPY src/tes.py /app

#compile app code
RUN python tes.py  #{to not run script at build time and directly run when you run the container}

#run app
CMD ["tes.py"]

ENTRYPOINT ["python"]


## What's this project for?

Developing and distributing python based tools for gnucash can be hard. Cloud based unattended calls to gnucash are even impossible to manage, because of paths on different systems etc.

## How to build?

Include required gnucash binaries first:

```
./include_tarball.sh 3.7
```

Use docker to build container:

```
docker build . -t gnucash-python:3.7
```

## How to use? 

Let your container extend this image:

```
FROM gnucash-python:3.7

WORKDIR /app

COPY import_worker.py /app/
COPY requirements.txt /app/

RUN python3.6 -m pip install --upgrade pip
RUN python3.6 -m pip install -r requirements.txt --user

# Run worker.py when the container launches
CMD ["python3.6", "/app/import_worker.py"]

``       

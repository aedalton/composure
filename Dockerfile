# build an image starting with python 3.7
FROM python:3.7-alpine

# set working directory to src
WORKDIR /src

# set environment variables used by flask command
ENV FLASK_APP app.py
ENV FLASK_RUN_HOST 0.0.0.0

# install gcc so Python packages can compile speedups
RUN apk add --no-cache gcc musl-dev linux-headers

# copy requirements.txt
COPY requirements.txt requirements.txt
# install the python dependencies
RUN pip install -r requirements.txt
# copy the current directory in the project to the working directory image
COPY . .
# set the default command for the container to flask run
CMD ["flask", "run"]

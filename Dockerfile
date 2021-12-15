FROM python:3.8.0
LABEL Jan Justyn Dela Cruz

RUN pip install virtualenv
ENV VIRTUAL_ENV=/venv
RUN virtualenv venv -p python3
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

WORKDIR /chatbotapp
COPY requirements.txt /chatbotapp/

RUN pip install --upgrade pip
RUN pip install -r requirements.txt

COPY . /chatbotapp/
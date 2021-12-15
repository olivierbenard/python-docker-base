FROM python:latest

ENV VIRTUAL_ENV = /opt/venv
RUN python3 -m venv $VIRTUAL_ENV

# do what activating venv does ie. set two environment variables ~ /opt/venv/bin/activate
ENV PATH="$VIRTUAL_ENV/bin:$PATH"

# install the dependencies at the root folder
COPY requirements.txt .
RUN pip install -r requirements.txt

# run the application
COPY app.py .
CMD ["python", "app.py", "-c", "4"]
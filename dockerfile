FROM python:latest

# each run is a distinct process
RUN python3 -m venv /opt/venv

# activate the virtual environment
# RUN . /opt/venv/bin/activate

# install the dependencies at the root folder
COPY requirements.txt .
RUN . /opt/venv/bin/activate && pip install -r requirements.txt

# run the application
COPY app.py .
CMD . /opt/venv/bin/activate && exec python app.py
FROM python:3.7.7-slim-stretch

## Step 1:
WORKDIR /app/

## Step 2:
COPY . app.py /app/
COPY model_data /app/

## Step 3:
# hadolint ignore=DL3013
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt
	
## Step 4:
Expose 80

## Step 5:
CMD ["python", "app.py"]

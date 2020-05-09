## The Makefile includes instructions on environment setup and lint tests

setup:
	# Create python virtualenv
	python3 -m venv ~/.devops

install:
	pip install --upgrade pip &&\
	pip install -r requirements.txt

test:
	#Currently, there is no tests available as it's just a demo.
lint:
	#lint Dockerfile
	hadolint --ignore=DL3013 Dockerfile
	# lint python files
	pylint --disable=R,C,W1203 app.py

all: install lint test

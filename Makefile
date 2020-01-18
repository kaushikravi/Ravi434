setup:
	python3 -m venv ~/.Ravi434

install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

test:
	python -m pytest -vv --cov=Ravi434lib tests/*.py
	python -m pytest --nbval notebookRavi434.ipynb


lint:
	pylint --disable=R,C Ravi434lib 

all: install lint test
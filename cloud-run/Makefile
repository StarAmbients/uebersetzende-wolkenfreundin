run:
	uvicorn app.main:app --reload --port 8080

test:
	pytest -v

lint:
	ruff check .

format:
	ruff check --fix .

install:
	pip install -r cloud-run/requirements.txt

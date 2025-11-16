# Run the development server
run:
	uvicorn app.main:app --reload --port 8080

# Run tests using pytest
test:
	pytest -q

# Run static checks (linting + format check)
lint:
	ruff check src tests
	black --check src tests

# Auto-format code
format:
	ruff check --fix src tests
	black src tests


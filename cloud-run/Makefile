# ===========================================
# Übersetzende Wolkenfreundin - Makefile
# Developer Shortcuts
# ===========================================

# Show available commands
help:
	@echo ""
	@echo "Available commands:"
	@echo "  make run       - Run the development server"
	@echo "  make test      - Run tests using pytest"
	@echo "  make lint      - Run linting (ruff + black check)"
	@echo "  make format    - Auto-format code (ruff fix + black)"
	@echo ""
	@echo "Examples:"
	@echo "  make run"
	@echo "  make lint"
	@echo "  make test"
	@echo ""

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

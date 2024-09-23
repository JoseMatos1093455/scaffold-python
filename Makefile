lint:
	@echo "Running flake8..."
	pylint --disable=R,C hello.py

format:
	@echo "Running black..."
	black *.py

install: |
	@echo "Installing dependencies..."
	pip install --upgrade pip
	pip install -r requirements.txt

test: |
	@echo "Running tests..."
	python -m pytest -vv --cov=hello test_hello.py

all: install lint format test
	@echo "All checks passed!"
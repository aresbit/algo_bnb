.PHONY: help install dev lint format test clean build upload

help:  ## Show this help
	@grep -E '^\.PHONY:|[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ".*?## "}; {printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2}'

install:  ## Install dependencies using uv
	uv sync

dev:  ## Install development dependencies
	uv sync --extra dev

lint:  ## Run linting with ruff
	uv run ruff check cryptoalgotrading/ test/

lint-fix:  ## Run linting with auto-fix
	uv run ruff check cryptoalgotrading/ test/ --fix

format:  ## Format code with black
	uv run black cryptoalgotrading/ test/

format-check:  ## Check code formatting
	uv run black --check cryptoalgotrading/ test/

type-check:  ## Run type checking with mypy
	uv run mypy cryptoalgotrading/

test:  ## Run tests with pytest
	uv run pytest test/ -v

test-cov:  ## Run tests with coverage
	uv run pytest test/ --cov=cryptoalgotrading --cov-report=html --cov-report=term

clean:  ## Clean build artifacts
	rm -rf build/ dist/ *.egg-info/ .pytest_cache/ .coverage htmlcov/ .mypy_cache/

build:  ## Build package
	uv build

upload-test:  ## Upload to test PyPI
	uv run twine upload --repository testpypi dist/*

upload:  ## Upload to PyPI
	uv run twine upload dist/*

pre-commit:  ## Run pre-commit hooks
	uv run pre-commit run --all-files

lock:  ## Update lock file
	uv lock

all: lint format type-check test  ## Run all checks
.PHONY: check clean setup-env export-env test lint package

all: check setup-env test lint package

check:
	which pip3
	which python3

clean:
	rm -rf .pyenv/
	rm -rf .pytest_cache/
	rm -rf .mypy_cache/
	rm -rf dist/
	rm -rf tests/.pytest_cache/
	rm -rf tests/metastore_db/
	rm -rf tests/spark-warehouse/
	rm -rf tests/derby.log
	rm -rf assets
	rm -rf metastore_db
	rm -rf spark-warehouse
	rm -rf .coverage
	rm -rf report.html

setup-env:
	virtualenv .pyenv; \
	. .pyenv/bin/activate; \
	python3 -m pip install --upgrade pip; \
	pip3 install -r requirements.txt; \

export-env:
	. .pyenv/bin/activate; \
	pip3 freeze > requirements.txt

lint:
	. .pyenv/bin/activate; \
	pylint --output-format=colorized --fail-under=8 src/ tests/

test:
	. .pyenv/bin/activate; \
	PYTHONPATH=src pytest --color=auto --code-highlight=yes --cov=awesome --no-cov-on-fail --cov-config=coverage.ini --html=report.html tests/;

package:
	. .pyenv/bin/activate; \
	python3 setup.py sdist --formats=gztar;

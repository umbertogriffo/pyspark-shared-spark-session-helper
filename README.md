
PySpark: unit, integration and end to end tests.
=========================

## Prerequisites

### MacOs

Install Brew:
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Install python 3.7+ and virtualenv:

```.env
brew install python3
python3 -m pip install virtualenv
```

## How to use the make file
* All-in-one: ```make all```
  * Setup, test and package.
* Check: ```make check```
  * Use It to check that `which pip3` and `which python3` points to the right path.
* Clean: ```make clean```
  * Removes all cached files.
* Setup: ```make setup-env```
  * Installs all dependencies.
* Export dependencies of the environment: ```make export_env```
  * Export a requirements.txt file containing the detailed dependencies of the environment.
* Test: ```make test```
  * Runs all tests.
  * Using [pytest](https://pypi.org/project/pytest/)
* Lint: ```make lint```
  * Checks PEP8 conformance and code smells using [pylint](https://www.pylint.org/).
* Package: ```make package```
  * Creates a bundle of software to be installed.

**Note:** Run `Setup` as your init command (or after `Clean`)

## References
* [PySpark: unit, integration and end-to-end tests][https://medium.com/@gu.martinm/pyspark-unit-integration-and-end-to-end-tests-c2ba71467d85]

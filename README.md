# SafeGraph Practice Problems

## About
Jupyter notebook with answers to SafeGraph's Technical Product Manager practice problems.

## Installation
Developed and tested on Macbook Air running MacOS 11.6.

##### Install [pyenv](https://github.com/pyenv/pyenv#homebrew-on-macos) and [pipenv](https://pipenv.pypa.io/en/latest/install/#pragmatic-installation-of-pipenv)
```
$ brew update
$ brew install pyenv
$ pyenv install 3.9.6
$ pyenv local 3.9.6
$ pip install --user --upgrade pipenv
```

##### Clone project and install dependencies
```
$ git clone git@github.com:bootstrapt/safegraph-practice-problem.git
$ cd safegraph-practice-problem
$ pipenv install
$ pipenv shell
```

## Runtime
From project root:
```
$ pipenv shell
$ jupyter notebook
```

## Publish to Github Pages
To publish this notebook, update `./html/index.html` and push to github. 
##### Scripted
```
$ sudo chmod +x ./publish_to_github_pages.sh
$ ./publish_to_github_pages.sh
```
##### Manually
```
$ jupyter nbconvert SafeGraph\ Interview\ Problem.ipynb --no-input --no-prompt --to=html --output-dir=docs --output=index.html
$ git commit -am "updated ./docs/index.html with latest notebook output"
$ git push
```

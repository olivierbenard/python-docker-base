## Motivation

Set-up a minimal project using:

- `Python`
- Virtual environment (incl. `click` python library)
- Docker
- CI/CD principles with Github Workflows

## Quick start

```
docker build -t python-docker-base .
docker images
docker run -t python-docker-base
docker rmi -f python-docker-base
```

## Resources

- [Activate Virtualenv Dockerfile](https://pythonspeed.com/articles/activate-virtualenv-dockerfile/)
- [Continuous Integration using Github Pipelines](https://medium.com/@michaelekpang/creating-a-ci-cd-pipeline-using-github-actions-b65bb248edfe)
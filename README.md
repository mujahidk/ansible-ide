# Ansible IDE

> Ansible Development Environment with AWS CLI and other Tools

## Python - **3.6.10**

```
python --version
```

## Ansible - **2.7.10**

```
ansible --version
```

## Run Docker container

```bash
docker run -it --rm -v "$PWD":/ansible/code -w /ansible/code mjdk/ansible-ide:2.7.10-python3
```


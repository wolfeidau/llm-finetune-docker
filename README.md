# llm-finetune-docker

Just some experiments with running fine tuning jobs for Phi 3 model in docker using nvidia container toolkit.

# Requirements

This project is currently tested on ubuntu 22.04, with the nvidia 550.67 driver.

```
apt-get install -y nvidia-container-toolkit
apt-get -y install docker.io
apt-get install docker-compose
```

# Environment

Example .envrc which is used to export tokens.

```
export HF_HUB_TOKEN=xxxx
```

# License

This application is released under Apache 2.0 license and is copyright [Mark Wolfe](https://www.wolfe.id.au?utm_source=llm-finetune-docker).
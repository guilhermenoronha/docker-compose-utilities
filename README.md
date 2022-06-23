# Docker-Compose Utilities

This repo is intended to gather all Apps/Services/Softwares I use that is a pain in the ass to install. I did slightly changes to fit me better, but feel free to fork this repo and adjust the configuration with your own tastes.

**DISCLAIMER:** NEVER use any of this compose files in production. These are intended to be used privately with development/study purposes.

## Repo Structure
```
project
│   README.md   
│
└───dbs
│   │   mysql.yaml
│   │   postgres.yaml
|
└───apache
|   │   airflow.yaml
|
└───extras
    |   docker-kill-all.sh
```
## How to use those docker-compose files?
1. Have docker and docker-compose installed.
2. Clone this repo ou save any file you want to use.
3. Open the terminal and run: 'docker-compose -f any_compose_file.yaml up'
4. OPTIONAL: If you have the need to remove all containers and images from your computer, just download docker-kill-all.sh and run it on terminal.

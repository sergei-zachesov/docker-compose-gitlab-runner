# Запуск GitLab Runner в Docker

## Следующие варианты:

### 1. Запуск с помощью compose и регистрация через терминал
* Запуск gitlab-runner `docker-compose.yml` на сервере
* Регистрация gitlab-runner. Варианты:
  * Запуск скрипта `docker exec...` из gitlab-runner-register.sh в терминале на сервере
  * Запуск скрипта `gitlab-runner register...`  из gitlab-runner-register.sh в терминале контейнера docker с gitlab-runner

### 2. Запуск и регистрация с помощью compose
* Добавление на один уровень с `docker-compose.with-register.yml` файл .env c заполнеными значенями
* Запуск gitlab-runner `docker-compose.with-register.yml` на сервере
* Удаление контейнира `register-runner` для регистрации

### 3. Запуск и регистрация с помощью compose с испльзованием [dind](https://habr.com/ru/companies/cloud4y/articles/710782/)  
* Добавление на один уровень с `docker-compose.dind.yml` файл .env c заполнеными значенями
* Запуск gitlab-runner `docker-compose.dind.yml` на сервере
* Удаление контейнира `register-runner` для регистрации

## Переменные для регистрации

.env(.sh):
* RUNNER_NAME(\<Registration runner name\>) = Произвольное имя, отображается в gitlab
* REGISTRATION_TOKEN(\<Registration token\>) = Settings ->  CI / CD -> Runners -> Specific Runners -> Set up a specific Runner manually
* CI_SERVER_URL(\<Runner registration URL\>) = Settings ->  CI / CD -> Runners -> Specific Runners -> Set up a specific Runner manually

# Запуск GitLab Runner в Docker

Развернуть GitLab Runner либо в Docker, либо в Dind, используя compose файлы соответственно.
Регистрация GitLab Runner производится:

* согласно инструкции https://docs.gitlab.com/runner/register/#register-with-a-runner-authentication-token
* либо через в проекте Project -> Settings -> Runners -> Project runners -> New project runner, далее получаем команду
  docker для регистрации раннера и запускаем команду в контейнере установленного раннера 




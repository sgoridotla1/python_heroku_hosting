Запуск маленького, але безкоштовного сервера на Heroku:
## Крок - 1
1) встановлюємо https://git-scm.com/downloads згідно вашої операційної системи
2) створюємо папку на робочому столі з будь-якою гарною назвою
3) відриваємо cmd.exe і переходимо у новостворену папку (напр: cd %USERPROFILE%\Desktop\<новостворена папка>)
3) виконуємо (мають з'явитись 3-и файли і можливо прихована тека .git - це норм): git clone https://github.com/Cular/python_heroku_hosting.git 

## Крок - 2
1) Зареєсруватись на https://www.heroku.com/
2) Завантажуємо і встановлюємо CLI (не міняємо галочки) https://devcenter.heroku.com/articles/getting-started-with-python#set-up 
3) відкриваємо cmd.exe 
4) у відкритому раніше cmd.exe виконуємо команду: `heroku login`
5) авторизуємось (відкриється вкладка браузера) 

## Крок - 3
1) Відкриваємо https://dashboard.heroku.com/apps
2) Натискаємо на кнопку "Create new app" (якщо вибрали іншу мову, то кнопка іншою буде)
3) Вводимо `<ім'я додатку>` нового, регіон Європа, тиснемо на кнопку створення

## Крок - 4
1) у відкритому раніше cmd.exe виконуємо команду: `heroku git:remote -a <ім'я додатку>`
2) виконуємо команди по одній:
 `heroku stack:set container --app=<ім'я додатку>`
 `git push heroku master`
 `heroku scale worker=1`
 `heroku logs -t -p worker`

## Додатково
###### `heroku logs -t -p worker` 
Команда `heroku logs -t -p worker` показує стан (консоль) вашого додатку, який крутиться на хостингу, аби залишити додаток працювати натискаємо `ctrl+c` і `Enter`
#### Аби знову подивитись стан (консоль)
виконуємо в cmd.exe: `heroku logs -t -p worker --app=<ім'я додатку>`
#### Аби зупинити додаток 
Простіше всього його видалити `https://dashboard.heroku.com/apps/<ім'я додатку>/settings`, у самому низу червоненька кнопка
#### Аби знову запустити додаток виконуємо дії:
- Крок - 1, пункт 3 
- Крок - 3
- Крок - 4

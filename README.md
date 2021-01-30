# watch-store
1. create database with name "ws_api"
2. import ws_api.sql in database
3. Rename .env.example file to .env inside your project root (ws_api folder) and fill the database information.
4. Open folder (ws_api)
5. Run composer install or php composer.phar install
6. Run php artisan key:generate
7. Run php artisan migrate
8. Run php artisan db:seed to run seeders, if any.
9. Run php artisan serve
10. Open folder (Watch-Store)
11. Run npm install
12. Run ng serve
13. for user side `localhost:4200/` for admin side `localhost:4200/admin`
14. login details can found in database

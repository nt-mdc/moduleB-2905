composer install
npm i
npm run build
cp .env.example .env
Crie o db module_b
php artisan migrate
php artisan db:seed
php artisan storage:link

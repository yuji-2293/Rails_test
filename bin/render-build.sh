set -o errexit

bundle install
yarn install
yarn build # jsファイルをesbuildでバンドルしているため

bundle exec rails assets:precompile
bundle exec rails assets:clean
RAILS_ENV=production rails assets:precompile
DISABLE_DATABASE_ENVIRONMENT_CHECK=1 bundle exec rails db:migrate:reset
bundle exec rails db:migrate
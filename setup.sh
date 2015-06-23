echo "Welcome ..."

init_db(){
  docker run --name mongodb -d -p 27017:27017 mongo:2.6.10
}

db_seed(){
  docker run -t -i --rm --link mongodb:mongodb app rake db:seed RAILS_ENV=production
}

start_db(){
  docker start mongodb
}

start_app(){
  docker stop app
  docker rm app
  docker run --name app --link mongodb:mongodb -d -p 3000:3000 app
}

start_web(){
  docker stop web
  docker rm web
  docker run --name web --link app:app -d -p 80:80 web
}

boot(){
  start_db
  start_app
  start_web
}

release(){
  start_app
  start_web
}

action=$1

${action}
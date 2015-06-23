Guide For Mac OSX Docker
===

set setup.sh as executable file

  sudo chmod +x setup.sh

start up mongodb use mongo image

  ./setup.sh init_db

rake db:seed

  ./setup.sh db_seed

start db from stop db container

  ./setup.sh start_db

start app from image

  ./setup.sh start_app

start web from image

  ./setup.sh start_web

boot server when all container was stoped

  ./setup.sh boot

release new version app when app image is built done

  ./setup.sh release

Tips: For linux add sudo previous docker
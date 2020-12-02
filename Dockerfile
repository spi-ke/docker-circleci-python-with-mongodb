FROM circleci/python:3.7

RUN wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
RUN echo "deb http://repo.mongodb.org/apt/debian buster/mongodb-org/4.4 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
RUN sudo ln -s /bin/echo /bin/systemctl
RUN sudo apt-get update && sudo apt-get install -y --no-install-recommends mongodb-org-server=4.4.2 && mongod --version

#RUN echo "deb http://ftp.debian.org/debian jessie-backports main" | sudo tee /etc/apt/sources.list.d/jessie-bacports.list
#RUN sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
#RUN echo "deb http://repo.mongodb.org/apt/debian jessie/mongodb-org/3.4 main" \
#    | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
#RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
#RUN sudo add-apt-repository 'deb http://repo.mongodb.org/apt/debian stretch/mongodb-org/4.0 main'
#RUN sudo apt-get update && sudo apt-get install -y --no-install-recommends mongodb-org-server && mongod --version

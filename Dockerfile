FROM circleci/python:3.7

RUN wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -
RUN echo "deb http://repo.mongodb.org/apt/debian buster/mongodb-org/4.4 main" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
RUN sudo ln -s /bin/echo /bin/systemctl
RUN sudo apt-get update && sudo apt-get install -y --no-install-recommends mongodb-org-server=4.4.2 && mongod --version
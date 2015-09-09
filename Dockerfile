FROM node:latest

# RUN apt-get update -qq && apt-get install -y build-essential

# Install Grunt cli
RUN npm install grunt-cli -g

#RUN mkdir /src

# Bundle app source - COPY command for a non-dev deployment, for dev we want the container to use files from 
# a local directory so changes are propogated immediately
#COPY src /src/
# cannot mount specific directory in dockerfile because this would break portability
# for dev container needs to be started with -v command to mount the src directory "-v $(PWD)/src://src -w //src"
#VOLUME ["/src"]

# Install app dependencies
#RUN cd /src; npm install

#WORKDIR /src

EXPOSE 3000

ENTRYPOINT ["grunt"]
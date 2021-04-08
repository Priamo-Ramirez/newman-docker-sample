FROM node:10-alpine
COPY ./ /etc/newman/
RUN npm install -global newman
RUN npm install -g newman-reporter-junitfull
WORKDIR /etc/newman
ENTRYPOINT [ "npm" ]
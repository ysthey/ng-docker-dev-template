FROM node:10-alpine
#RUN apk update && apk upgrade && \
#    apk add --no-cache git
RUN npm install -g npm && npm install -g @angular/cli



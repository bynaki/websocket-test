FROM node

RUN npm install -g wscat
CMD wscat -c $URL
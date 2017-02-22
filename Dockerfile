FROM node:6.9.5
RUN mkdir -p /code
WORKDIR /code
ADD . /code
RUN npm set progress=false && \
    npm install -s --no-progress && \
    npm run build && \
    npm prune --production
CMD [ "npm", "start" ]
EXPOSE 3000

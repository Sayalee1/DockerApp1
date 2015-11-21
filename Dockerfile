#New Comment
FROM node:4-onbuild

# set default workdir
WORKDIR /usr/src

# Add package.json to allow for caching
COPY package.json /usr/src/package.json

# Install app dependencies
RUN npm install

# Bundle app source and tests
COPY app.js /usr/src/
COPY test /usr/src/test
COPY script /usr/src/script

# Expose the application port and run application
EXPOSE 5050
CMD ["node","app.js"]
ENTRYPOINT ["npm", "start"]

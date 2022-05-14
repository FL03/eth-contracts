FROM trufflesuite/ganache-cli

ADD . /app
WORKDIR /app

COPY . ./
RUN npm install && npm run truffle:compile

EXPOSE 8545
CMD ["npm", "run", "truffle:deploy"]
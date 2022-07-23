FROM fusuf/whatsasena:latest

RUN git clone https://github.com/AlexaMwoL/TOXIC /Kriz/TOXIC

WORKDIR /Kriz/TOXIC

ENV TZ=Africa/Harare

RUN npm install

RUN npm install supervisor -g
RUN yarn install --ignore-engines
CMD ["node", "index.js"]

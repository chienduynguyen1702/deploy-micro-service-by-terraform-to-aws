FROM node:16-alpine

WORKDIR /src

COPY package.json /src/
RUN npm install

COPY . /src

ENV PORT=4000

ENV ENVIRONMENT=production
ENV MONGO_DATABASE=mongodb+srv://junzmint07112002:bui1minh2dung3@cluster-ktpm.8lu884o.mongodb.net/?retryWrites=true&w=majority
ENV PORT=4000
#JWT_CREDENTIAL
ENV ACCESS_TOKEN_SECRET=MYSECRETACCESS
ENV REFRESH_TOKEN_SECRET=MYREFRESHTOKENSECRET
#TWILIO
ENV TWILIO_ACCOUNT_SID=AC06cc57b5376b24a9ebb5cbbc66c1d8ce
ENV TWILIO_AUTH_TOKEN=607193ed6b34eed3f78e6650d8651e31
ENV TWILIO_ACTIVE_PHONE_NUMBER=+13159155067
EXPOSE $PORT

CMD ["npm", "run", "start"]
# node image to run react
FROM node:18-alpine

# this is the workdir the assignment asks for
WORKDIR /singh_karanpreet_site

# copy package files first and install
COPY package*.json ./
RUN npm install

# copy the rest of the project
COPY . .

# site runs on port 7775
ENV PORT=7775
EXPOSE 7775

CMD ["npm", "start"]
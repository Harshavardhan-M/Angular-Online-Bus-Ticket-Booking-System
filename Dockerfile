# base image
FROM node:8.9.4

# set working directory
WORKDIR /app

# install and cache app dependencies
COPY . .
RUN npm install
RUN npm run build --prod

FROM nginx:1.13.3-alpine
COPY dist/Angular-Online-Bus-Ticket-Booking-System  /usr/share/nginx/html

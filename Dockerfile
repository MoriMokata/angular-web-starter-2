### STAGE 1: Build ###
FROM node:18.10.0 as build
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
COPY . .

RUN npm install -g @angular/cli@15.2.11
RUN ng build --output-path=/dist

###############
# Run in NGINX #
###############
FROM nginx:alpine
COPY /nginx.conf /etc/nginx/nginx.conf
COPY --from=build /dist /usr/share/nginx/html


CMD ["nginx", "-g", "daemon off;"]

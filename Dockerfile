FROM node:20-alpine AS build
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY index.js ./

FROM nginx:alpine
COPY --from=build /app/index.js /usr/shar/nginx/html

COPY nginx.conf /etc/nginx/conf.d/default.conf
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

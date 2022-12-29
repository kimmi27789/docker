#stage 1
FROM node:16-alpine
WORKDIR /app
COPY . .
RUN npm install
RUN npm run build

#stage 2
FROM nginx:alpine
COPY --from=0 /app/dist/angular_app /usr/share/nginx/html




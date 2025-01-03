# FROM node:18 AS build

# WORKDIR /app

# COPY package*.json ./

# RUN npm install 

# COPY . .

# RUN npm run build

# FROM nginx:alpine

# COPY --from=build /app/build /usr/share/nginx/html

# # COPY nginx.conf /etc/nginx/nginx.conf

# EXPOSE 5000

# CMD ["/usr/sbin/nginx", "-g", "daemon off;"]


FROM node:16.20.1
WORKDIR /app
COPY package.json ./
RUN npm install
COPY . .
EXPOSE 5000
CMD ["npm","run","start"]

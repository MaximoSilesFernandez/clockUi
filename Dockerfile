FROM node:24-alpine AS base
WORKDIR /dist
COPY package*.json ./
RUN npm ci
COPY . ./
EXPOSE 80
CMD ["npm", "run", "dev"]
FROM node:20 AS build

ARG VITE_BACKEND_URL=https://blog-backend-158729857342.us-east1.run.app/api/v1
ARG VITE_GRAPHQL_URL=https://blog-backend-158729857342.us-east1.run.app/graphql

ENV VITE_BACKEND_URL=${VITE_BACKEND_URL}
ENV VITE_GRAPHQL_URL=${VITE_GRAPHQL_URL}

WORKDIR /build

COPY package.json .
COPY package-lock.json .
RUN npm install

COPY . .
RUN npm run build

EXPOSE 3000

# Start the SSR server
CMD ["npm", "start"]
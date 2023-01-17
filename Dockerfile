FROM public.ecr.aws/docker/library/node:lts-alpine3.15

WORKDIR /
COPY package*.json /
ENV NODE_ENV=development
RUN npm install
COPY . /
COPY .env.local /
EXPOSE 8000
CMD ["npm", "run", "dev:server"]
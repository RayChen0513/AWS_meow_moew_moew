FROM 711387134398.dkr.ecr.us-east-1.amazonaws.com/node:24 AS build
WORKDIR /app

COPY . .
RUN npm install


FROM 711387134398.dkr.ecr.us-east-1.amazonaws.com/node:24.3.0-alpine
WORKDIR /app


COPY --from=build /app /app

EXPOSE 3000

CMD node .
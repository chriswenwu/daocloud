FROM node:10.23.1-alpine3.9  as bd
WORKDIR /code
COPY ./ /code
RUN  node -v > index.html

FROM  node:10.23.1-alpine3.9
COPY --from=bd /code/index.html /index.html
CMD cat /index.html

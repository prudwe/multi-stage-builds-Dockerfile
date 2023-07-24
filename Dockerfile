FROM alpine/git:latest AS code
WORKDIR /food
RUN git clone https://github.com/ravi2krishna/food.git

FROM httpd
COPY --from=code /food/food /usr/local/apache2/htdocs

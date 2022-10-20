# in your Dockerfile
FROM sphinxdoc/sphinx as build

WORKDIR /src
COPY src/ ./src/
COPY requirements.txt .
COPY Makefile .
RUN pip3 install -r requirements.txt
RUN ls -l
RUN make html

FROM nginx:latest
WORKDIR /usr/share/nginx/html/
COPY --from=build /src/build/html .
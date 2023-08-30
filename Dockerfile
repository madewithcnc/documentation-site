# in your Dockerfile
#FROM sphinxdoc/sphinx as build
FROM sphinxdoc/sphinx-latexpdf:7.1.2 as build

WORKDIR /src
COPY src/ ./src/
COPY requirements.txt .
copy *.readthedocs.yaml .
COPY Makefile .
RUN pip3 install -r requirements.txt
RUN ls -l
RUN make html

FROM nginx:latest
WORKDIR /usr/share/nginx/html/
COPY --from=build /src/build/html .
#docker run --rm -v /nvme_raid/projects/code/documentation-site:/src made-with-cnc-docs:latest make html

docker run -it --rm -v /dumpster/projects/code/documentation-site:/src made-with-cnc-docs:dev make html
# docker build . --no-cache -t made-with-cnc-docs:7d9d65-8
docker run --rm -v ./:/src made-with-cnc-docs:latest make html
# docker run -it --rm -v /dumpster/projects/code/documentation-site:/src sphinxdoc/sphinx-latexpdf:7.1.2 make html
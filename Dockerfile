FROM python:3.8-alpine

RUN pip install mkdocs
RUN pip install mkdocs-material
RUN pip install markdown-include
RUN pip install mkdocs-macros-plugin

COPY ./ /DashBasicConfigDocs/
WORKDIR /DashBasicConfigDocs/
EXPOSE 8000
CMD ["mkdocs", "serve", "-a", "0.0.0.0:8000"]

#docker build -t basicconfigdocs .
#docker run -dp 8000:8000 basicconfigdocs
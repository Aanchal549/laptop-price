FROM python:3.10.16-slim-bullseye

COPY ./project_root ./

WORKDIR ./project_root

RUN ./lib_install.sh

CMD ["uvicorn","main:app", "--host", "0.0.0.0", "--port", "80"] 


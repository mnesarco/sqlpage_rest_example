FROM postgres:16

RUN apt update && apt install python3 python3-pip python3-requests postgresql-plpython3-${PG_MAJOR} -y


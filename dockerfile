FROM ubuntu

RUN apt-get update && apt-get install -y --no-install-recommends \
		gcc \
		build-essential 
COPY ./* /usr/src/orchestrator/
WORKDIR /usr/src/orchestrator
RUN gcc main.cpp -o test

CMD ["./test"]
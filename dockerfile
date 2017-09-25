FROM ubuntu

RUN apt-get update && apt-get install -y --no-install-recommends \
		gcc \
		build-essential \
        git
COPY . /usr/src/orchestrator
RUN cd /usr/src/orchestrator
RUN gcc hello.cpp -o hello
RUN find \( -name 'hello' \) -exec file '{}' + -exec ls -lh '{}' +

CMD ["./hello"]
FROM ubuntu

RUN apt-get update && apt-get install -y --no-install-recommends \
		gcc \
		build-essential \
        git \

RUN git clone https://github.com/zhenjiao/orchestrator.git
RUN cd orchestrator
RUN gcc hello.cpp -o hello
RUN find \( -name 'hello' \) -exec file '{}' + -exec ls -lh '{}' +

CMD ["./hello"]
FROM alpine
ARG SIZE=1024
RUN head -c $(( ${SIZE}*1024 )) </dev/random > file.bin; ls -l file.bin
ENTRYPOINT [ "ls", "-l", "file.bin" ]

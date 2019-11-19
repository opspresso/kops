# Dockerfile

FROM alpine

RUN apk add --no-cache bash curl

ENV VERSION 1.11.0-beta.1

RUN curl -sLO https://github.com/kubernetes/kops/releases/download/${VERSION}/kops-linux-amd64 && \
    chmod +x kops-linux-amd64 && mv kops-linux-amd64 /usr/local/bin/kops

ENTRYPOINT ["bash"]

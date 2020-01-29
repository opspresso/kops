# Dockerfile

FROM alpine

RUN apk add --no-cache bash curl

ENV VERSION v1.17.0-alpha.2

RUN curl -sLO https://github.com/kubernetes/kops/releases/download/${VERSION}/kops-linux-amd64 && \
    chmod +x kops-linux-amd64 && mv kops-linux-amd64 /usr/local/bin/kops

ENTRYPOINT ["bash"]

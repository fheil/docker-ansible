FROM alpine:latest
RUN apk update && apk add --no-cache bash joe openssh-client ca-certificates ansible && mkdir -p /ansible/.ssh

# Configure local profile
COPY config/profile.local.sh /etc/profile.d/profile.local.sh

# Configure .bashrc for root
COPY config/.bashrc /root/.bashrc

WORKDIR /ansible

ENTRYPOINT ["/bin/bash .bashrc", "-l", "-c"]

FROM docker.io/saltstack/salt:3004.1

# https://gitlab.com/saltstack/open/saltdocker/-/issues/35
RUN apk add --no-cache gnupg
ADD --chmod=0755 salt-gpg.py /usr/local/bin/salt-gpg

# fix permissions (this is something the base container does as well)
RUN mkdir -p /etc/salt/gpgkeys && \
    chmod -R 2775 /etc/salt && \
    chgrp -R salt /etc/salt

# https://gitlab.com/saltstack/open/saltdocker/-/merge_requests/29
ADD --chmod=0755 saltinit.py /usr/local/bin/saltinit

FROM docker.io/saltstack/salt:3004

# https://gitlab.com/saltstack/open/saltdocker/-/issues/35
RUN apk add --no-cache gnupg

# https://gitlab.com/saltstack/open/saltdocker/-/merge_requests/29
ADD saltinit.py /usr/local/bin/saltinit

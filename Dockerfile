FROM docker.io/saltstack/salt:3003-alpine3.13-172ca8e4

# https://gitlab.com/saltstack/open/saltdocker/-/merge_requests/15
RUN apk add --no-cache py3-pygit2

# https://gitlab.com/saltstack/open/saltdocker/-/merge_requests/29
ADD saltinit.py /usr/local/bin/saltinit

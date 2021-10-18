FROM docker.io/saltstack/salt:3003.3

# https://gitlab.com/saltstack/open/saltdocker/-/merge_requests/59
RUN apk add --no-cache libgit2-dev && \
    pip3 install --no-cache-dir 'pygit2<1.7'

# https://gitlab.com/saltstack/open/saltdocker/-/merge_requests/29
ADD saltinit.py /usr/local/bin/saltinit


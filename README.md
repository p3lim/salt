# salt

This repository repackages the [saltstack/salt](https://hub.docker.com/r/saltstack/salt) container image with the following patches:

- [!29](https://gitlab.com/saltstack/open/saltdocker/-/merge_requests/29) - respect existing user.conf

It also implements GnuPG ([#35](https://gitlab.com/saltstack/open/saltdocker/-/issues/35)).
GPG can be initialized by setting the `SALT_GPG_INIT` environment variable to a non-empty value.

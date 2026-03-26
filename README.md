# bootstrap-go

Provisioning script for Go on Ubuntu

## Provision

As `root`, run `adduser --ingroup sudo user`.

As `user`, set your FQDN for sendmail, then run `bootstrap.sh`.

```sh
# https://man7.org/linux/man-pages/man5/hosts.5.html#EXAMPLES
# sudo nano /etc/hosts e.g. 198.51.100.0 (public Internet) fqdn hostname
# 127.0.1.1       thishost.mydomain.org  thishost
```

```sh
curl -o - https://raw.githubusercontent.com/andrewmcwattersandco/bootstrap-go/v1.0.0/bootstrap.sh | bash
```

## License

GNU Affero General Public License v3.0

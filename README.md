# VPS Bootstrap as User via Chef

*WARNING: No warranty expressed or implied about the security of your machine after executing these scripts*

A chef repo to be run as a privileged user against a fresh Ubuntu 12.04 VPS install using [knife solo](http://matschaffer.github.io/knife-solo/).  Hopefully this user is setup with password-less ssh, possibly using [vps-bootstrap-root](https://github.com/justinsteffy/vps-bootstrap-root)

## Setup

* install knife solo (use `gem install knife-solo`)
* prepare the target machine using `knife solo prepare user@your.host`
* overwrite the contents of the newly created file in `nodes/your.host.json` with the contents of `template.json`
* TBD
* run `knife solo cook user@your.host`

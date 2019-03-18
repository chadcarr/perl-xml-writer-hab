# Habitat package - perl-xml-writer
Habitat package for perl module XML::Writer

## Usage
```
cd <proj>
hab studio enter
build
exit
hab pkg upload results/<pkg>.hart
```

## Setting up "hab studio enter"
* Establish up your origin on builder
    * Generate origin key pair
    * Generate personal access token
* "hab cli setup"
    * Enter personal access token
    * Enter control secret (see also "Windows tricks")
* Start habitat superviser "hab sup run" (see also "Windows tricks")
* Start habitat studio in your project directory "hab studio enter"

## Windows tricks
Problem: "hab sup run" doesn't work from Ubuntu on Windows and "hab studio enter" on Windows starts a powershell session by default, even from git bash. So do "hab sup run" directly on Windows (git bash, powershell, or cmd.exe), then do "hab studio enter" from Ubuntu.

Supervisor control secrets must match: copy from Windows file
C:\hab\sup\default\CTL_SECRET into Ubuntu ~/.hab/etc/cli.toml:

```
ctl_secret = "fe+j4Ga+44AvwI6BcjlF1m3V+Y+0+AMNrZIWwIXJlqL2LaPny1qmYTlmJHbXeN1+7SCFRadp3wTcembSiVolGw=="
```

Or rerun "hab cli setup"

## Maintainer
Chad Carr <ccarr@franzdoodle.com>
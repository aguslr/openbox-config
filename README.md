# Openbox configuration

## About

This repository stores my configuration of [Openbox][openbox], *a highly
configurable, next generation window manager with extensive standards support*.

## Getting the files

### Using Git

If we have Git installed on the system, we can get the files directly from the
repository:

```sh
git clone https://gitlab.com/aguslr/openbox-config
```

After this, every time we want to update the files we do:

```sh
cd openbox-config && git pull
```

### Without Git

If Git is not installed, we can still get the files as long as we have a basic
Unix environment available:

```sh
wget https://gitlab.com/aguslr/openbox-config/-/archive/master/openbox-config-master.tar.gz -O - | tar -xzv --strip-components 1 --exclude={README.md,screenshot.png}
```

## Installing with Stow

To easily create and manage links to the files we can use [GNU Stow][stow] as
follows:

```sh
stow -vt ~ -S .
```

Or simply, using [Make][]:

```sh
make install
```

## Screenshot

![Screenshot](https://gitlab.com/aguslr/openbox-config/raw/master/screenshot.png "Screenshot")

[make]: https://www.gnu.org/software/make/
[openbox]: http://openbox.org/
[stow]: https://www.gnu.org/software/stow/

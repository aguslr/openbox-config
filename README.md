# Openbox configuration

## About

This repository stores my configuration of [Openbox][openbox], which is *a
highly configurable, next generation window manager with extensive
standards support*.

## Getting the files

### Using Git

If we have Git installed on the system, we can get the files directly from the
repository:

```sh
git clone git://github.com/aguslr/openbox-config.git
```

After this, every time we want to update the files we do:

```sh
cd openbox-config && git pull
```

### Without Git

If Git is not installed, we can still get the files as long as we have a basic
Unix environment available:

```sh
wget https://github.com/aguslr/openbox-config/tarball/master -O - | tar -xzv --strip-components 1 --exclude={README.md}
```

### Installing with Stow

To easily create and manage links to the files we can use [GNU Stow][stow] as
follows:

```sh
stow -vt ~/.config -S .config
```

[openbox]: http://openbox.org/
[stow]: https://www.gnu.org/software/stow/

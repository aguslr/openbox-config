TARGET = $(HOME)
.PHONY = all install clean uninstall test update


# Installing #

all: install

install:
	-@stow --verbose --target=$(TARGET) -S .


# Uninstalling #

clean: uninstall

uninstall: $(TARGET)
	-@stow --verbose --target=$(TARGET) -D .


# Testing #

test: $(TARGET)
	-@stow --no --verbose --target=$(TARGET) -S .


# Updating #

update:
	git pull --rebase origin $$(git symbolic-ref --short HEAD)

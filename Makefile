TARGET = $(HOME)
.PHONY = all install clean uninstall test update

DIRS := $(TARGET)/.config/tint2 \
	$(TARGET)/.local/share/themes \

# Installing #

all: install

install:
	-@$(foreach var,$(DIRS),mkdir -p $(var);)
	-@stow --verbose --target=$(TARGET) -S .


# Uninstalling #

clean: uninstall

uninstall: $(TARGET)
	-@stow --verbose --target=$(TARGET) -D .
	-@$(foreach var,$(DIRS),rmdir -p $(var) 2>/dev/null || true;)


# Testing #

test: $(TARGET)
	-@stow --no --verbose --target=$(TARGET) -S .


# Updating #

update:
	git pull --rebase origin $$(git symbolic-ref --short HEAD)

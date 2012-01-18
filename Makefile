NAME    := pvf
VERSION := 0.0.1
TARBALL := $(NAME)-$(VERSION).tar.xz

SRC   := $(shell find src -name '*.vala')
CSRC  := $(patsubst src/%.vala,tmp/%.c, $(SRC))
OBJ   := $(patsubst src/%.vala,tmp/%.o, $(SRC))
VAPI  := $(patsubst src/%.vala,tmp/%.vapi, $(SRC))
FVAPI := $(patsubst tmp/%.vapi,--use-fast-vapi=tmp/%.vapi, $(VAPI))

PKGC := pkg-config
PKGS := proplib glib-2.0 gobject-2.0
VALA := valac
VALAFLAGS := -C -c -b src -d tmp
VALA_PKGS := $(foreach pkg,$(PKGS),$(subst $(pkg),--pkg $(pkg),$(pkg)))
VALA_VAPI := --vapidir=vapi

CC := gcc
CFLAGS  := $(shell $(PKGC) --cflags $(PKGS)) -DPVF_VERSION="$(VERSION)"
LDFLAGS := $(shell $(PKGC) --libs $(PKGS))

echo := echo -e
WD := $(shell pwd)

TARGET := bin/$(NAME)

all: $(VAPI) $(TARGET)
	@echo "[Done]"

$(TARGET): $(OBJ)
	@echo "[CCLD]\t$@"
	@mkdir -p ${@D}
	@$(CC) -o $@ $^ $(LDFLAGS)

tmp/%.o: tmp/%.c
	@echo "[CC]\t$@"
	@$(CC) $(CFLAGS) -c $< -o $@

tmp/%.c: src/%.vala
	@echo "[valac]\t$@"
	@$(VALA) $(VALAFLAGS) $(VALA_PKGS) $(VALA_VAPI) $< \
		$(subst --use-fast-vapi=$(patsubst src/%.vala,tmp/%.vapi,$<),,$(FVAPI))

tmp/%.vapi: src/%.vala
	@echo "[valac]\t$@"
	@mkdir -p ${@D}
	@$(VALA) --fast-vapi=$@ $<

$(TARBALL): clean
	@echo "[tar]\t./$@"
	@mkdir -p /tmp/$(NAME)-$(VERSION)
	@cp -a ./* /tmp/$(NAME)-$(VERSION)
	@cd /tmp && tar -cJf $@ $(NAME)-$(VERSION)
	@rm -rf /tmp/$(NAME)-$(VERSION)
	@mv /tmp/$@ $(WD)
	
dist: $(TARBALL)

clean:
	@rm -rf bin tmp
	@echo "[rm]\tCleaned."

.PHONY: clean dist
.PRECIOUS: $(CSRC) $(VAPI)

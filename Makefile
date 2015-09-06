# build rules.
GO=go 
GODEP_PATH:=$(shell godep path 2>/dev/null)
ifdef GODEP_PATH
GO=godep go
endif

.PHONY: all build install clean

all: build install

build:
	$(GO) build

install:
	$(GO) install ./...

clean:
	$(GO) clean -i ./...
	rm -f *~ y.output y.go tmp.go

test: 
	$(GO) test -cover ./...

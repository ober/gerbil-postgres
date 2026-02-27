build:
	gerbil build

clean:
	gerbil clean

test: build
	gerbil test postgres

.PHONY: build clean test

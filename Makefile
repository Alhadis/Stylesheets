all: reset/normalize.min.css

install:
	@(command -v cleancss 2>&1 >/dev/null) || npm -g i clean-css-cli

%.min.css: %.css
	cleancss -o $@ $^

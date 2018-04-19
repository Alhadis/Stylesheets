all: reset/normalize.min.css

%.min.css: %.css
	cleancss -o $@ $^

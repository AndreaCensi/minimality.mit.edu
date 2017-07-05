all: index.html

%.html: %.md
	pandoc --from markdown-markdown_in_html_blocks+raw_html -s -o $@ $^

CV_DIR = /Users/liamtoney/drive/career/cv
INCLUDE_DIR = _includes

PDF = cv.pdf
HTML = cv.html

all: cv serve

cv:
	cd $(CV_DIR) && make all
	cp $(addprefix $(CV_DIR)/,$(PDF)) $(PDF)
	cp $(addprefix $(CV_DIR)/,$(HTML)) $(addprefix $(INCLUDE_DIR)/,$(HTML))
	cd $(CV_DIR) && make clean
	@echo "----------------------------------------------------------"
	@echo "Don't forget to update LinkedIn and Facebook if necessary!"
	@echo "----------------------------------------------------------"

serve:
	bundle exec jekyll serve --open-url --livereload

CV_DIR = ~/drive/career/cv

PDF = cv.pdf
HTML = cv.html

cv:
	cd $(CV_DIR) && make all
	cp $(CV_DIR)/$(PDF) $(PDF)
	cp $(CV_DIR)/$(HTML) $(HTML)
	cd $(CV_DIR) && make clean

CHDIR_SHELL := $(SHELL)
define chdir
   $(eval _D=$(firstword $(1) $(@D)))
   $(info $(MAKE): cd $(_D)) $(eval SHELL = cd $(_D); $(CHDIR_SHELL))
endef

all:
	$(shell sh shell-scripts/closePreviewWindows.sh)
	$(shell cd shell-scripts && sh markDownMaker.sh)
	python includeIncludes.py
	#do this twice, to get reference correct
	make badpdf
	bibtex Main\ Thesis\ Style
	make pdf
	open Main\ Thesis\ Style.pdf

badpdf:
		pdflatex -draftmode --shell-escape Main\ Thesis\ Style.tex

pdf:
		pdflatex -interaction=batchmode --shell-escape Main\ Thesis\ Style.tex

verbose:
		pdflatex --shell-escape Main\ Thesis\ Style.tex

clean:
		$(shell sh shell-scripts/closePreviewWindows.sh)
		find . -name "*.aux" -type f -delete
		find . -name "*.lot" -type f -delete
		find . -name "*.lof" -type f -delete
		find . -name "*.loa" -type f -delete
		find . -name "*.toc" -type f -delete
		rm chapters/*
		rm shell-scripts/includes.md

share:
	make all
	$(shell git pull && git commit -am "sharing to sharelatex" && git push)
	$(shell open https://www.sharelatex.com/project/55bbf07dd2ca043251bda49f)

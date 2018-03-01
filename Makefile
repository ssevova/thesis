.PHONY: ssevova_thesis.pdf

EXTRASTYS = abhepexpt.sty abhep.sty abmath.sty lineno.sty siunitx.sty SIunits.sty varwidth.sty

ssevova_thesis.pdf: ssevova_thesis.tex preamble.tex chap1-dmtheory.tex chap2-cms.tex chap3-eventreco.tex chap4-backgrounds.tex frontmatter.tex appendices.tex
#	@rm -f $(EXTRASTYS)
#	unzip extrastyles.zip
	@rm -f ssevova_thesis.{aux,toc,lof,lot}
#	pdflatex example && bibtex example && pdflatex example && pdflatex example
	lualatex ssevova_thesis && bibtex ssevova_thesis && lualatex ssevova_thesis && lualatex ssevova_thesis
	@rm -f ssevova_thesis.{aux,toc,lof,lot}
#	@rm -f $(EXTRASTYS)

clean:
#	@rm -f $(EXTRASTYS)
	@rm -f ssevova_thesis.pdf ssevova_thesis.log ssevova_thesis.aux
	@rm -f *.bbl *.blg *.lof *.cut
	@rm -f *.lot *.out *.toc

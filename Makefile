FILE := main
OUT  := build
PRES_OUT := presentation/build

.PHONY: pdf
pdf:
	latexmk -interaction=nonstopmode -outdir=$(OUT) -pdf -halt-on-error $(FILE)
#	latexmk -interaction=nonstopmode -outdir=$(PRES_OUT) -pdf -halt-on-error presentation/$(FILE)

.PHONY: watch
watch:
	latexmk -interaction=nonstopmode -outdir=$(OUT) -pdf -pvc -halt-on-error $(FILE)
#	latexmk -interaction=nonstopmode -outdir=$(PRES_OUT) -pdf -pvc -halt-on-error presentation/$(FILE)

.PHONY: clean
clean:
	rm -rf $(filter-out $(OUT)/$(FILE).pdf, $(wildcard $(OUT)/*))
#	rm -rf $(filter-out $(PRES_OUT)/$(FILE).pdf, $(wildcard $(PRES_OUT)/*))

.PHONY: purge
purge:
	rm -rf $(OUT)
#	rm -rf $(PRES_OUT)

all: doc test

doc: doc/manual.six

doc/manual.six: createautodoc.g makedoc.g maketest.g ListOfDocFiles.g \
		PackageInfo.g VERSION \
		doc/CombinatoricsForHomalg.bib doc/*.xml \
		gap/*.gd gap/*.gi examples/*.g
		gap createautodoc.g
	        gap makedoc.g

clean:
	(cd doc ; ./clean)

test:	doc
	gap maketest.g

archive: test
	(mkdir -p ../tar; cd ..; tar czvf tar/CombinatoricsForHomalg.tar.gz --exclude ".DS_Store" --exclude "*~" CombinatoricsForHomalg/doc/*.* CombinatoricsForHomalg/doc/clean CombinatoricsForHomalg/gap/*.{gi,gd} CombinatoricsForHomalg/{CHANGES,PackageInfo.g,README,VERSION,init.g,read.g,makedoc.g,makefile,maketest.g,ListOfDocFiles.g,createautodoc.g} CombinatoricsForHomalg/examples/*.g)

WEBPOS=~/gap/pkg/CombinatoricsForHomalg/public_html
WEBPOS_FINAL=~/Sites/homalg-project/CombinatoricsForHomalg

towww: archive
	echo '<?xml version="1.0" encoding="UTF-8"?>' >${WEBPOS}.version
	echo '<mixer>' >>${WEBPOS}.version
	cat VERSION >>${WEBPOS}.version
	echo '</mixer>' >>${WEBPOS}.version
	cp PackageInfo.g ${WEBPOS}
	cp README ${WEBPOS}/README.CombinatoricsForHomalg
	cp doc/manual.pdf ${WEBPOS}/CombinatoricsForHomalg.pdf
	cp doc/*.{css,html} ${WEBPOS}
	rm -f ${WEBPOS}/*.tar.gz
	mv ../tar/CombinatoricsForHomalg.tar.gz ${WEBPOS}/CombinatoricsForHomalg-`cat VERSION`.tar.gz
	rm -f ${WEBPOS_FINAL}/*.tar.gz
	cp ${WEBPOS}/* ${WEBPOS_FINAL}
	ln -s CombinatoricsForHomalg-`cat VERSION`.tar.gz ${WEBPOS_FINAL}/CombinatoricsForHomalg.tar.gz

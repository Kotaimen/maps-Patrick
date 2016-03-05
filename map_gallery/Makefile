PYTHON=python
CARTO=carto

all: carto/res/Stage/tint.png \
     carto/patrick.xml \
     carto/patrick@2x.xml \
     carto/nps-mask.xml \
     carto/res/Stage/shield/general-1ch.png \
     carto/res/Stage/nps/Bob.png \
     carto/data/continents.index

.PHONY: all
	
clean:
	$(RM) carto/res/Stage/tint.png
	$(RM) carto/res/Stage/nps/*.png
	$(RM) carto/res/Stage/shield/*.png
	$(RM) carto/project.mml carto/*.xml
	$(RM) carto/data/*.index
.PHONY: clean

carto/res/Stage/tint.png:
	mkdir -p carto/res/stage
	convert --version
#	convert -size 30x256 gradient: -rotate 90 -interpolate Bicubic \( +size xc:#334466  xc:grey50 xc:#f7ba9d +append \) -clut $@

carto/data/continents.index:
	cd carto/data/ && shapeindex *.shp

carto/res/Stage/shield/general-1ch.png: carto/res/generate_shield.py
	mkdir -p carto/res/Stage/shield
	cd carto/res/ && ${PYTHON} generate_shield.py

carto/res/Stage/nps/Bob.png: carto/res/generate_nps.py
	mkdir -p carto/res/Stage/nps
	cd carto/res/ && ${PYTHON} generate_nps.py

%.mml : %.yaml
	${PYTHON} -c 'import yaml, json; print(json.dumps(yaml.load(open("$<")), indent=2))' > $@

carto/patrick.xml : carto/patrick.mml carto/*.mss ../patch_carto.py
	${CARTO} $< > $@
	${PYTHON} ../patch_carto.py $@

carto/patrick@2x.xml : carto/patrick.mml carto/*.mss ../patch_carto.py
	${CARTO} $< > $@
	${PYTHON} ../patch_carto.py --scale=2 $@

carto/nps-mask.xml : carto/nps-mask.mml carto/nps-mask.mss
	${CARTO} $< > $@

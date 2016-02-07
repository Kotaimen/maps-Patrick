PYTHON=python
CARTO=carto

all: carto/res/Stage/tint.png carto/patrick.xml \
     carto/res/Stage/shield/general-1ch.png \
     carto/res/Stage/shield/Bob.png

.PHONY: all
	
clean:
	$(RM) carto/res/Stage/tint.png
	$(RM) carto/res/Stage/nps/*.png
	$(RM) carto/res/Stage/shield/*.png
	$(RM) carto/project.mml carto/patrick.xml
.PHONY: clean

carto/res/Stage/tint.png:
	mkdir -p carto/res/stage
	convert -size 30x256 gradient: -rotate 90 -interpolate Bicubic \( +size xc:#334466  xc:grey50 xc:#f7ba9d +append \) -clut $@

carto/res/Stage/shield/general-1ch.png: carto/res/generate_shield.py
	mkdir -p carto/res/Stage/shield
	cd carto/res/ && ${PYTHON} generate_shield.py

carto/res/Stage/shield/Bob.png: carto/res/generate_nps.py
	mkdir -p carto/res/Stage/nps
	cd carto/res/ && ${PYTHON} generate_nps.py

%.mml : %.yaml
	${PYTHON} -c 'import yaml, json; print(json.dumps(yaml.load(open("$<")), indent=2))' > $@

%.xml : carto/project.mml carto/*.mss ../patch_carto.py
	${CARTO} $< > $@
	${PYTHON} ../patch_carto.py $@


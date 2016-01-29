PYTHON=python
CARTO=carto

all: carto/res/Stage/tint.png carto/patrick.xml
.PHONY: all
	
clean:
	$(RM) carto/res/Stage/tint.png 
	$(RM) carto/project.mml carto/patrick.xml
.PHONY: clean

carto/res/Stage/tint.png:
	convert -size 30x256 gradient: -rotate 90 -interpolate Bicubic \( +size xc:#334466  xc:grey50 xc:#f7ba9d +append \) -clut $@

%.mml : %.yaml
	${PYTHON} -c 'import yaml, json; print(json.dumps(yaml.load(open("$<")), indent=2))' > $@

%.xml : carto/project.mml carto/*.mss ../patch_carto.py
	${CARTO} $< > $@
	${PYTHON} ../patch_carto.py $@

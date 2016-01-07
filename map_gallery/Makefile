PYTHON=python
CARTO=carto

all: carto/res/Stage/tint.png carto/project.mml carto/patrick.xml

clean:
	$(RM) carto/res/Stage/tint.png carto/project.mml carto/patrick.xml

carto/res/Stage/tint.png:
	convert -size 30x256 gradient: -rotate 90  -interpolate Bicubic \( +size xc:#334466  xc:grey50 xc:#f7ba9d +append \) -clut $@

carto/project.mml: carto/project.yaml
	${PYTHON} -c 'import yaml, json; print(json.dumps(yaml.load(open("$<")), indent=2))' > $@

carto/patrick.xml: carto/project.mml carto/*.mss
	${CARTO} carto/project.mml > $@

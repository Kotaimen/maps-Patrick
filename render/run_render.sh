#!/bin/bash

set -e

export VERSION=mark1
export RENDER_LOG=/tmp/render/render.log

stonemason check

stonemason tilerenderer hillshading_${VERSION} .webp --csv=usa1-9.csv --log=${RENDER_LOG}
stonemason tilerenderer hillshading_${VERSION} .webp --csv=usa10-11.csv --log=${RENDER_LOG}
stonemason tilerenderer hillshading_${VERSION} .webp --csv=nps.csv --log=${RENDER_LOG}
stonemason tilerenderer hillshading_${VERSION} .webp --csv=usa3m.csv --log=${RENDER_LOG}

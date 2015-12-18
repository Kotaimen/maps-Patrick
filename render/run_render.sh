#!/bin/bash

set -e

export VERSION=mk1
export RENDER_LOG=/tmp/render/render.log

stonemason check

stonemason tilerenderer reliefmap_${VERSION} .webp --csv=usa1-9.csv --log=${RENDER_LOG}
stonemason tilerenderer reliefmap_${VERSION} .webp --csv=usa10-11.csv --log=${RENDER_LOG}
stonemason tilerenderer reliefmap_${VERSION} .webp --csv=nps.csv --log=${RENDER_LOG}
stonemason tilerenderer reliefmap_${VERSION} .webp --csv=usa3m.csv --log=${RENDER_LOG}

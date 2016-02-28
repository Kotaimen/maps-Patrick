#!/bin/bash

set -e

export VERSION=mark1
export RENDER_LOG=/tmp/render/render.log

stonemason check

stonemason tilerenderer hillshading_${VERSION} .webp --csv=terrain_4_16.csv --log=${RENDER_LOG}
stonemason tilerenderer patrick_${VERSION} .png --csv=nps_4_15.csv --log=${RENDER_LOG}
stonemason tilerenderer patrick_${VERSION} @2x.png --csv=nps_4_16.csv --log=${RENDER_LOG}

SCAD_ROOT := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))
OUT_ROOT := $(SCAD_ROOT)/out
STL_OUT := $(OUT_ROOT)/stl
GCODE_OUT := $(OUT_ROOT)/gcode 

# macOS
OPENSCAD_ROOT ?= /Applications/OpenSCAD.app/Contexts/MacOS
CURA_ROOT ?= /Applications/Ultimaker\ Cura.app/Contents/MacOS/CuraEngine

OPENSCAD_BIN ?= $(OPENSCAD_ROOT)/OpenSCAD
CURAENGINE_BIN ?= $(CURA_ROOT)/CuraEngine
CURA_DEFAULTS ?= $(CURA_ROOT)/resources/definitions/creality_cr10.def.json

STL_TARGETS := $(patsubst %.scad,%.stl,$(wildcard *.scad))
GCODE_TARGETS := $(patsubst %.scad,%.gcode,$(wildcard *.scad))

.DEFAULT_GOAL := all
.PHONY: stl gcode all clean

stl: $(STL_TARGETS)

gcode: $(GCODE_TARGETS)

all: stl gcode

%.stl: %.scad
	@mkdir -p out/stl
	$(OPENSCAD_BIN) -m make -o $(STL_OUT)/$@ $<

%.gcode: %.stl
	@mkdir -p out/gcode
	$(CURAENGINE_BIN) slice -v -p -j $(CURA_DEFAULTS) -o $(GCODE_OUT)/$@ -l $<

clean:
	rm -Rf $(OUT_ROOT)
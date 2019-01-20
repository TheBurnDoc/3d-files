# Tim's 3D Files
Source code and scripts related to CAD and 3D printing.

## OpenSCAD Source
[OpenSCAD](http://www.openscad.org/) source code is located in the `scad` sub-directory of this repository and supports generating of STL models from the command line with `make`.  The `Makefile` also automates the slicing of said models into G-Code for 3D printers using [CuraEngine](https://github.com/Ultimaker/CuraEngine).

### Generating STL Models
```
make -f scad/Makefile stl
```

### Generating G-Code
```
make -f scad/Makefile gcode
```
module roundedcube(xdim, ydim, zdim, rdim) {
    hull() {
        translate([rdim, rdim, 0]) cylinder(r=rdim, h=zdim);
        translate([xdim-rdim, rdim, 0]) cylinder(r=rdim, h=zdim);
        translate([rdim, ydim-rdim, 0]) cylinder(r=rdim, h=zdim);
        translate([xdim-rdim, ydim-rdim, 0]) cylinder(r=rdim, h=zdim);
    }
}
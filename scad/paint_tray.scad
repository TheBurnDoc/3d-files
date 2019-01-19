$fn=64;

module roundedcube(xdim, ydim, zdim, rdim) {
    hull() {
        translate([rdim, rdim, 0]) cylinder(r=rdim, h=zdim);
        translate([xdim-rdim, rdim, 0]) cylinder(r=rdim, h=zdim);
        translate([rdim, ydim-rdim, 0]) cylinder(r=rdim, h=zdim);
        translate([xdim-rdim, ydim-rdim, 0]) cylinder(r=rdim, h=zdim);
    }
}

vallejoDia = 25;      // Vallejo, Army Painter, Scale 75, GSW
vallejoLargeDia = 36; // Vallejo Metal Color, Vehicle Washes
citadelDia = 33;      // Modern Citadel Pots

sectionX = 400;
sectionY = 80;

roundedcube(sectionX, sectionY, 10, 5);

for (x = [0 : sectionX/vallejoDia : sectionX]) { 
    for (y = [0 : sectionY/vallejoDia : sectionY]) {
        translate([x, y, 5]) cylinder(r=vallejoDia/2, h=3);
    }
}
include <templates/token-life.scad>

diameter_mm = 30;
thickness_mm = 2;
ridge_width_mm = 2;
ridge_depth_mm = 0.5;
symbol_thickness_mm = 0.3;
size = 9;
font = "Arial Unicode MS:style=Bold";

difference() {
    token_life();

    color(color_token)
    translate([0, adjust_height_mm, thickness_mm-ridge_depth_mm]) {
        scale([1,1,2*symbol_thickness_mm]) {
            linear_extrude(1) text("5", halign="center", valign="center", size=size, font=font);
        }
    }
}

color(color_symbol)
difference() {
    $fn=60;
    cylinder(r=diameter_mm/2-3*ridge_width_mm/2, h=thickness_mm);
    translate([0,0,-1])
        cylinder(r=diameter_mm/2-2*ridge_width_mm, h=thickness_mm+2);
}

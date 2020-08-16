module token_empty(diameter_mm=30, thickness_mm=2, ridge_width_mm=2, ridge_depth_mm=0.5) {
    $fn=60;
    difference() {
        cylinder(r=diameter_mm/2, h=thickness_mm);
        translate([0,0,-ridge_depth_mm]) {
            cylinder(r=diameter_mm/2-ridge_width_mm, h=2*ridge_depth_mm);
        }
        translate([0,0,thickness_mm-ridge_depth_mm]) {
            cylinder(r=diameter_mm/2-ridge_width_mm, h=2*ridge_depth_mm);
        }
    }
}

token_empty();

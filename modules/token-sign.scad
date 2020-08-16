use <token-empty.scad>

module token_with_sign(sign, adjust_height_mm=0, font="Arial Unicode MS", sign_thickness_mm=0.3, size=14, diameter_mm=30, thickness_mm=3, ridge_width_mm=2, ridge_depth_mm=0.5) {
    token_empty(diameter_mm, thickness_mm, ridge_width_mm, ridge_depth_mm);
    translate([0, adjust_height_mm, thickness_mm-ridge_depth_mm+sign_thickness_mm]) {
        scale([1,1,-2*sign_thickness_mm]) {
            linear_extrude(1) text(sign, halign="center", valign="center", size=size, font=font);
        }
    }
}

token_with_sign(sign="☻", adjust_height_mm=-0.5, size=20);
//token_with_sign(sign="❤︎", adjust_height_mm=-1.5);
//token_with_sign(sign="❥");

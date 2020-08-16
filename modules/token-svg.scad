use <token-empty.scad>

module token_with_svg(svg, adjust_height_mm=0, scale=0.115, symbol_thickness_mm=0.3, diameter_mm=30, thickness_mm=2, ridge_width_mm=2, ridge_depth_mm=0.5) {
    token_empty(diameter_mm, thickness_mm, ridge_width_mm, ridge_depth_mm);
    translate([0, adjust_height_mm, thickness_mm-ridge_depth_mm+symbol_thickness_mm]) {
        scale([scale,scale,-2*symbol_thickness_mm]) {
            linear_extrude(1) {
                import(file=svg, center=true);
            }
        }
    }
}

token_with_svg(svg="../svg/sbed_clover.svg", adjust_height_mm=2, scale=0.13);

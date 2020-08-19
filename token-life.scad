use <modules/token-svg.scad>
include <modules/filaments_colors.scad>

// Symbolism: Red
scale([2/3,2/3,1])
token_with_svg(svg="svg/skoll_hearts.svg", adjust_height_mm=-1,
    color_token=PLA_PRU_GBLACK, color_symbol=PLA_PRU_LRED);

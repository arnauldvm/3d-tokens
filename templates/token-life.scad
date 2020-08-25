use <../modules/token-svg.scad>
include <../modules/filaments_colors.scad>

adjust_height_mm = -1;
// Symbolism: Red
color_token = PLA_PRU_GBLACK;
color_symbol = PLA_PRU_LRED;

module token_life() {
    token_with_svg(svg="svg/skoll_hearts.svg", adjust_height_mm=adjust_height_mm,
        color_token=color_token, color_symbol=color_symbol);
}

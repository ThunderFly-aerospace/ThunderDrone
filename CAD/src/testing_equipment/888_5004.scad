include <../../parameters.scad>
use <../lib/ALU_profile_holder_top.scad>
use <../lib/ALU_joint_B.scad>

    
module 888_5004() {
    podlozka = 0.8; //tloušťka podložky
    deep = 40;
    
    translate([0, -deep-ALU_profile_holder_wall_thickness*2, 0])
        ALU_profile_holder_top(deep);
    
    ALU_joint_B(ALU_profile_width);    
}

888_5004();
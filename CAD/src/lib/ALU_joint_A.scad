include <../../parameters.scad>

module ALU_joint_A() {
    difference() {
        hull() {
            cube([ALU_profile_width+ALU_profile_holder_wall_thickness*2-10, 10, 608_bearing_outer_diameter+10]);
            translate([0, 608_bearing_outer_diameter-2, (608_bearing_outer_diameter+10)/2])
                rotate([0, 90, 0])
                    cylinder(d=608_bearing_outer_diameter+10, h=ALU_profile_width+ALU_profile_holder_wall_thickness*2-10, $fn=100);
        }
        
        translate([-0.1, 608_bearing_outer_diameter-2, (608_bearing_outer_diameter+10)/2])
                rotate([0, 90, 0])
                    cylinder(d=608_bearing_outer_diameter, h=608_bearing_thickness+0.1, $fn=60);

        translate([ALU_profile_width+ALU_profile_holder_wall_thickness*2-10-608_bearing_thickness+0.1, 608_bearing_outer_diameter-2, (608_bearing_outer_diameter+10)/2])
                rotate([0, 90, 0])
                    cylinder(d=608_bearing_outer_diameter, h=608_bearing_thickness+0.1, $fn=60);
        
        translate([0, 20, (608_bearing_outer_diameter+10)/2])
                rotate([0, 90, 0])
                    cylinder(d=M8_screw_diameter, h=ALU_profile_width+ALU_profile_holder_wall_thickness*2-10, $fn=60);
    }
}

ALU_joint_A();
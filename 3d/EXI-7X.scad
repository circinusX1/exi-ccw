// Higher definition curves
$fs = 0.01;

// module for round
module roundedcube(size = [1, 1, 1], center = false, radius = 0.5, apply_to = "all") {
	// If single value, convert to [x, y, z] vector
	size = (size[0] == undef) ? [size, size, size] : size;

	translate_min = radius;
	translate_xmax = size[0] - radius;
	translate_ymax = size[1] - radius;
	translate_zmax = size[2] - radius;

	diameter = radius * 2;

	module build_point(type = "sphere", rotate = [0, 0, 0]) {
		if (type == "sphere") {
			sphere(r = radius);
		} else if (type == "cylinder") {
			rotate(a = rotate)
			cylinder(h = diameter, r = radius, center = true);
		}
	}

	obj_translate = (center == false) ?
		[0, 0, 0] : [
			-(size[0] / 2),
			-(size[1] / 2),
			-(size[2] / 2)
		];

	translate(v = obj_translate) {
		hull() {
			for (translate_x = [translate_min, translate_xmax]) {
				x_at = (translate_x == translate_min) ? "min" : "max";
				for (translate_y = [translate_min, translate_ymax]) {
					y_at = (translate_y == translate_min) ? "min" : "max";
					for (translate_z = [translate_min, translate_zmax]) {
						z_at = (translate_z == translate_min) ? "min" : "max";

						translate(v = [translate_x, translate_y, translate_z])
						if (
							(apply_to == "all") ||
							(apply_to == "xmin" && x_at == "min") || (apply_to == "xmax" && x_at == "max") ||
							(apply_to == "ymin" && y_at == "min") || (apply_to == "ymax" && y_at == "max") ||
							(apply_to == "zmin" && z_at == "min") || (apply_to == "zmax" && z_at == "max")
						) {
							build_point("sphere");
						} else {
							rotate = 
								(apply_to == "xmin" || apply_to == "xmax" || apply_to == "x") ? [0, 90, 0] : (
								(apply_to == "ymin" || apply_to == "ymax" || apply_to == "y") ? [90, 90, 0] :
								[0, 0, 0]
							);
							build_point("cylinder", rotate);
						}
					}
				}
			}
		}
	}
}


////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////
length_ext=93.0;    // length of the pickup
width_ext=37.8;     // width
height_exterior=22; // height    
holes_offset=3.0;   // center of screw holes offset from left right margin
walls_width_mm=1.5;  // walls width
length_interior=length_ext-walls_width_mm; // the interior length
width_interior=width_ext-walls_width_mm;   // the interior width

screw_bord_small_h=16.5;


screw_xoffset_x=(length_ext/2)-holes_offset;
deccub=screw_xoffset_x+6;
clip_cube_hole_x=(length_ext/2)+7.51;//51.85;
sml_ext_r=2.8;


int_hl=1.7;
cuhole=5.0;
sbh=10.0;
base_radius=3.5;

difference(){

    union()
    {
        difference() {
            
            roundedcube([length_ext,width_ext,height_exterior], true, 1.0,"xy");
            translate([0,0,-6]){
                cube([length_interior,width_interior,30.9], center=true );
            }
        }

        union(){
            union(){
                translate([screw_xoffset_x,0,0]){
                    cylinder(screw_bord_small_h,sml_ext_r,sml_ext_r,center=true);
                }
                // big solid cyl
                translate([screw_xoffset_x,0,5]){
                    cylinder(sbh,base_radius,base_radius,center=true);
                }
            }
        }

        union(){
            union(){
                translate([-screw_xoffset_x,0,0]){
                    cylinder(screw_bord_small_h,sml_ext_r,sml_ext_r,center=true);
                }
                // big solid cyl
                translate([-screw_xoffset_x,0,5]){
                    cylinder(sbh,base_radius,base_radius,center=true);
                }
            }
        }
        /*
       translate([30,-6,-8]){
            cube([13,1.0,18]);
       }
       translate([30,-18,-8]){
            cube([1,12.0,18]);
       }
        */
    }
    
    union(){
    

        
        cube_open=8.5;
        rad_up=26;
        
        union(){
            translate([screw_xoffset_x,0,0]){
                cylinder(rad_up,int_hl,int_hl,center=true);
            }
            // cut big
            translate([screw_xoffset_x,0,9.8]){
                cylinder(16,base_radius-1,base_radius-1,center=true);
            }
            
            translate([deccub,0,9.8]){
                cube([13, cuhole, 15],center=true);
            }

            translate([clip_cube_hole_x,0,9.8]){
                cube([15,cube_open,45],center=true);
            }
        }

        union(){
            translate([-screw_xoffset_x,0,0]){
                cylinder(rad_up,int_hl,int_hl,center=true);
            }
            translate([-screw_xoffset_x,0,9.8]){
                cylinder(16,base_radius-1,base_radius-1,center=true);
            }
            
            translate([-deccub,0,9.8]){
                cube([13,cuhole,15],center=true);
            }

            translate([-clip_cube_hole_x,0,9.8]){
                cube([15,cube_open,45],center=true);
            }

        }
    }
    /*
    CW=1.2;
    YTR=10.3;
    CH=1.5;
    TRP=35;
    union(){
        translate([TRP,-15,YTR]){
            rotate([45,0,0]){   
                cube([8,CH,CW], center=true);
            }
            
        }
        translate([TRP,-12,YTR]){
            rotate([45,0,0]){   
                cube([5,CH,CW], center=true);
            }
            
        }
        translate([TRP,-9,YTR]){
           rotate([45,0,0]){
                cube([8,CH,CW], center=true);
                }
        }
  
    }
    */
}
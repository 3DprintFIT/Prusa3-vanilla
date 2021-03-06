// PRUSA iteration3
// NEMA 17 extruder small gear
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org


include <inc/external_gear_script.scad>;

module small_gear()
{
	translate([0,0,0])
	{

		translate ([30,0,0])
		difference(){
			rotate ([0,0,360*-1/20]) gear (number_of_teeth=10,
			circular_pitch=268,
			gear_thickness = 9,
			rim_thickness = 20,
			hub_thickness = 0,
			hub_diameter = 18,
			bore_diameter = 0,
			circles=0);


			difference(){ 
				translate ([0,0,-1]) cylinder(r=6/2, h=25, $fn=30);
				translate ([-5,1.5,0])cube([10,10,30]);
			}
		}
	}
}

small_gear();
include <Getriebe.scad>

include <ScrewsMetric/ScrewsMetric.scad>;

g=+.3;

// Motor + Gear
// x
color("yellow"){
translate([35.2-23/2+1.5,  -8,  37.5]){rotate([0,  0,  -180]){translate([0,  0,  -7]){
stirnrad(modul=1,  zahnzahl=12,  breite=7,  bohrung=7.8);
translate([0,  0,  -1])import("small_gears2.stl");
*translate([0,  8,  -14])scale([10,  10,  10])import("StepMotorModel.stl");
	
		translate([-17.5,  8,  -13.3-4]){
			difference(){
			cylinder(7.72+4,  3.4,  3.4); //extension
			cylinder(100,  2,  2); //extension
		}}
			translate([17.5,  8,  -13.3-4]){
			difference(){
			cylinder(7.72+4,  3.4,  3.4); //extension
			cylinder(100,  2,  2); //extension
		}}
	
}}}
// y
translate([5,  41+2,  26+2.78]){rotate([0,  0,  0]){translate([0,  0,  -7]){
	difference(){
		union(){
translate([0,  0,  -3])rotate([0,  0,  19])stirnrad(modul=1,  zahnzahl=10,  breite=8,  bohrung=7.8);
translate([0,  0,  -2])import("small_gears2.stl");
*translate([0,  8,  -14])scale([10,  10,  10])import("StepMotorModel.stl");
		}
					translate([0,  0,  15])cube([20,20,20],center=true);
		
		}}}}
	}




// cogs
// y
			color("cyan",  alpha=1){
    translate([35.2-23/2+1.5,  33.3-23/2+.7,  14.2+4]){
				difference(){
					union(){
						rotate([0,0,3])stirnrad (modul=1,  zahnzahl=44,  breite=8.5,  bohrung=23.7+g,  eingriffswinkel=20,  schraegungswinkel=0,  optimiert=true);
						translate([0,  0,  10.5-4])cylinder(2,  15+g/2,  15+g/2);		
                        
					}
					translate([0,  0,  10.5-5])cylinder(4,  (15.5+g)/2,  (15.5+g)/2);
					translate([-9.5,  0,  10.5-4])cylinder(3,  .8,  .8);// Schrauben
					translate([9.5,  0,  10.5-4])cylinder(3,  .8,  .8);// Schrauben
					
					br=1.5+.1+g/4;
y=-1.5;
					r=-23/2;
translate([0,  r-br,  y])import("festigungsloch.stl");
rotate([0,  0,  120])translate([0,  r-br,  y])import("festigungsloch.stl");
rotate([0,  0,  240])translate([0,  r-br,  y])import("festigungsloch.stl");
                    
             difference(){  // zum coupieren der Zahnräder
            cylinder(30,50,50);    
            cylinder(32,20,65);    
            }
               
					
				}}}
				
				
	// x
		color("lavender"){
					translate([35.2-23/2+1.5,  33.3-23/2+.7,  14.2+4+10.5+1]){
						color("lavender")difference(){
							union(){
								rotate([180,  0,  0])translate([0,  0,  -8.5])stirnrad (modul=1,  zahnzahl=49,  breite=9,  bohrung=14.8+g,  eingriffswinkel=20,  schraegungswinkel=0,  optimiert=true);
						}
						br=.7+g/4+.3;
y=-1;
translate([0,  -7.75-br,  y])import("festigungsloch.stl");
rotate([0,  0,  120])translate([0,  -7.75-br,  y])import("festigungsloch.stl");
rotate([0,  0,  240])translate([0,  -7.75-br,  y])import("festigungsloch.stl");
					}
				}
			}









//$fn=100;
// sleeve 
			difference(){//Schraubennippel
		translate([1.15+2.5-g/2,  33.3-10-g/2,  14.2+-1.5+.5])cylinder(1.5,  2.2,  2.2); // Schraubenkopf
	r=1.25+g/2;
			translate([1.15+2.5-g/2,  33.3-10-g/2,  14.2-2])cylinder(3.5,  r,  r); // Schraube
}

color("green"){
	translate([0,  0,  0]){
		thick=3;
		difference(){
			union(){
				translate([-thick,  -thick,  -thick*3-1])cube([35.2+thick*2,  33.3+2*thick,  14.2+4*thick+1]);
				//translate([-thick,  33.3-13.8,  -thick])cube([15+thick,  13.8+thick,  thick]);
				
				//motorbefestigung
				translate([-18-1,  55,  14.2-8.3])rotate([0,  0,  -73])cube([93,  41+2,  8.3+thick]);
				
                
                translate([35.2-23/2+1.5-g/2,  33.3-23/2+.7-g/2,  14.2]){
                    rrr=23/2+1+g/2+thick;
					cylinder(thick,  rrr,rrr);
				}
                
                
			}
		
			// -Motor + Gear
// x
translate([35.2-23/2+1.5,  -8,  37.5]){rotate([0,  0,  -180]){translate([0,  0,  -7]){
stirnrad(modul=1,  zahnzahl=12,  breite=7,  bohrung=5);
translate([0,  8,  -14-5])scale([10,  10,  10])import("StepMotorModel.stl");	
			translate([-17.5,  8,  -13.3-4])cylinder(7.72+4,  3.4,  3.4);//stud
		  translate([17.5,  8,  -13.3-4])cylinder(7.72+4,  3.4,  3.4); //stud
	translate([-17.5,  8,  -40])cylinder(100,  2,  2); //Schraubenloch
	translate([-17.5,  8,  -25])rotate([0,  0,  30])FullNut(M4,  hollow=true);
	translate([17.5,  8,  -40])cylinder(100,  2,  2);  //Schraubenloch
	translate([17.5,  8,  -25])rotate([0,  0,  30])FullNut(M4,  hollow=true);
}}}

translate([35.2-23/2+1.5,  -8-2,  37.5]){rotate([0,  0,  -180]){translate([0,  0,  -7]){
stirnrad(modul=1,  zahnzahl=12,  breite=7,  bohrung=5);
translate([0,  8,  -14-5])scale([10,  10,  10])import("StepMotorModel.stl");	
			translate([-17.5,  8,  -13.3-4])cylinder(7.72+4,  3.4,  3.4);//stud
		  translate([17.5,  8,  -13.3-4])cylinder(7.72+4,  3.4,  3.4); //stud
	translate([-17.5,  8,  -40])cylinder(100,  2,  2); //Schraubenloch
	translate([-17.5,  8,  -25])rotate([0,  0,  30])FullNut(M4,  hollow=true);
	translate([17.5,  8,  -40])cylinder(100,  2,  2);  //Schraubenloch
	translate([17.5,  8,  -25])rotate([0,  0,  30])FullNut(M4,  hollow=true);
}}}

// y
translate([5,  41,  26+2.78]){rotate([0,  0,  0]){translate([0,  0,  -7]){
translate([0,  0,  -2])rotate([0,  0,  19])stirnrad(modul=1,  zahnzahl=12,  breite=7,  bohrung=5);
translate([0,  0,  -2])import("small_gear.stl");
translate([0,  8,  -14])scale([10,  10,  10])import("StepMotorModel.stl");
	translate([-17.5,  8,  -20])cylinder(100,  2.1,  2.1);
	translate([-17.5,  8,  -16])rotate([0,  0,  30])FullNut(M4,  hollow=true);
	translate([17.5,  8,  -20])cylinder(100,  2.1,  2.1);
	translate([17.5,  8,  -16])rotate([0,  0,  30])FullNut(M4,  hollow=true);
	
}}}
// y
translate([5,  41+2,  26+2.78]){rotate([0,  0,  0]){translate([0,  0,  -7]){
translate([0,  0,  -2])rotate([0,  0,  19])stirnrad(modul=1,  zahnzahl=12,  breite=7,  bohrung=5);
translate([0,  0,  -2])import("small_gear.stl");
translate([0,  8,  -14])scale([10,  10,  10])import("StepMotorModel.stl");
	translate([-17.5,  8,  -20])cylinder(100,  2.1,  2.1);
	translate([-17.5,  8,  -16])rotate([0,  0,  30])FullNut(M4,  hollow=true);
	translate([17.5,  8,  -20])cylinder(100,  2.1,  2.1);
	translate([17.5,  8,  -16])rotate([0,  0,  30])FullNut(M4,  hollow=true);
	
}}}

			
	
			
		// Fix
color("blue",  alpha=.7){
	translate([0-g/2,  0-g/2,  0]){
		difference(){
			union(){
				cube([96.5+g,  19+g,  14.2]); // grundplatte
				cube([35.2+g,  33.3+g,  14.2]); // grundplatte
           
	translate([0-g/2,  33.3-13.8-g/2,  -40])cube([35.2+g,  13.8+g,  40]); //Schlittenfortsetzung erweitert
           
   t2=thick+2;
translate([0-t2-g/2,  33.3-13.8-g/2,  -20])cube([35.2-20.2+t2+g,  13.8+t2+g,  20-2.1-2.5]); //Schlittenfortsetzung extra für befestigunf
           
				r=1.25+g/2;
			translate([1.15+2.5-g/2,  33.3-10-g/2,  14.2])cylinder(3.5,  r,  r); // Schraube
			translate([1.15+2.5-g/2,  33.3-10-g/2,  14.2+thick-1-.5])cylinder(3.5,  2.35+g/2,  2.35+g/2); // Schraubenkopf		
		}	}}}



		//Knöpfe
				translate([35.2-23/2+1.5-g/2,  33.3-23/2+.7-g/2,  14.2]){
					cylinder(10.5,  23/2+1+g/2,  23/2+1+g/2);
				}
		//Knöpfe2 neagativ herabgezogen
				translate([35.2-23/2+1.5-g/2,  33.3-23/2+.7-g/2,  -30]){
					cylinder(80,  23/2+.2+g/2,  23/2+.2+g/2);
					}

		translate([35.2,  19,  -11])cube([61.5,  6,  25.1]); // Trägergang

		//-Befestigung
color("silver")translate([0-4,  33.3-13,  0-2.1-g/2])rotate([0,  0,  90-55])cube([35,  2.1+g/2,  2.1+g/2]);

color("silver")translate([25,  33.3+4,  14.2-20-2.1-g/2])rotate([0,  0,  -35])translate([-3,  0,  0])  cube([21,  2.1+g/2,  2.1+g/2]);


		//Schlittenkurve
						translate([-10,  -10,  -12])cube([96.5+2,  33.3-13.8+10,  14.2-8.3+12]); // 
			translate([-10,  4+3,  14.2-8.3])cube([11,  10-3,  8.3-4.2+1]); // 
			difference(){translate([-10,  6.3,  14.2-9-.5])rotate([25,  0,  0])cube([11,  5,  20]); //
				translate([-11,  0,  10+1])cube([50,  100,  100]);} 
		}
	}
}




//Befestigung
color("silver")translate([0-4,  33.3-13,  0-2])rotate([0,  0,  90-55])union(){cube([35,  2,  2]);
translate([29,  0,  -2])cube([2,  2,  4]);
	}

color("silver")translate([25,  33.3+4,  14.2-20-2.1])rotate([0,  0,  -35])translate([-3,  0,  0]){
   cube([21,  2,  2]);
   cube([2,  2,  4]);
}



//Knöpfe
color("red",  alpha=1)translate([35.2-23/2+1.5,  33.3-23/2+.7,  14.2]){
					cylinder(10.5,  23/2,  23/2);
					translate([-9.5,  0,  10.5])cylinder(2,  .5,  .5);// Schrauben
					translate([9.5,  0,  10.5])cylinder(2,  .5,  .5);// Schrauben
					translate([0,  0,  10.5])cylinder(13.7,  14.1/2,  14.1/2);
				}

// Fix
*color("blue",  alpha=1){
	translate([0,  0,  0]){
		difference(){
			union(){
			cube([96.5,  33.3,  14.2]); // grundplatte
			
           difference(){
              translate([15,  33.3-13.8,  -20])cube([20.2,  13.8,  20]); //Schlittenfortsetzung
              translate([15+11.5,  33.3,  14.2-20-20])rotate([0,  0,  -27])cube([100,  100,  20]);
           }
				r=1.25;
			translate([1.15+2.5,  33.3-10,  14.2])cylinder(2,  r,  r); // Schraube
				
				

				
			}	
			
			// negative cubes
			translate([-1,  -1,  -1])cube([96.5+2,  33.3-13.8+1,  14.2-8.3+1]); // 
			translate([35.2,  19,  -1])cube([61.5,  14.1+1,  15+1]); // 
}}}

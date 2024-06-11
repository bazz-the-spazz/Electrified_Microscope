include <ScrewsMetric/ScrewsMetric.scad>;
$fn=100;


// Tubus
R=(30/2)+.1;
color("pink")difference(){
	union(){
		cylinder(15,R+1.5,R+1.5);
        
		
		translate([-16,-9.5,-9]) cube([3,5,8]);
		translate([15-2,-9.5,-9]) cube([3,5,8]);		
		
		
		translate([0,-R-5,12.5-4]) cube([11.2,9,5+4+4],center=true); //Schraubenhalter
		
	
			
						
		// Stacherl
		translate([-8.5-8.5/2,-5.5-8.5/2,-3]){
			r=1;
			*translate([2,8.5+r,-1]) cylinder(3,r,r);
			translate([2,8.5+r+10.5+r+r,0]) cylinder(3,r,r);
			*translate([25-2,8.5+r,-1]) cylinder(3,r,r);
			translate([25-2,8.5+r+10.5+r+r,0]) cylinder(3,r,r);
			}

		//Platerl
		translate([-R-1.5,-R-1.5,-1]) cube([R*2+3,R*2+3,6]);
		
		}
	translate([0,0,2.8])cylinder(17,R,R); // minus Zylinder
    translate([0,0,-.1])cylinder(17,R-1.5,R-1.5); // minus Zylinder 2
    
    r=3;
	translate([0,0,r-1])rotate_extrude()translate([R-r,0,0])circle(r); // minus Torus   
     
	
	translate([-8.5-8.5/2-.1,-5.5-8.5/2-.1,-1.1]){
	difference(){
		color("teal")cube([25.2,24.2,1.1]); // Platine
		// Löcher
		r=1;
		translate([2,8.5+r+10.5+r+r,-1]) cylinder(3,r,r);
		translate([25-2,8.5+r+10.5+r+r,-1]) cylinder(3,r,r);
	}
}			// minus Platine
		
		r=5;
		translate([0,0,r])rotate_extrude()translate([R+1.5+r,0,0])circle(r); // minus Torus
		
			translate([0,0,-.5])	rotate_extrude()translate([R+6,0,0])difference(){
	circle(2.5);
	translate([-2.5,0,0])circle(1.5); // minus torus 2
}

			translate([-16,-7,-6]) rotate([0,90,0]) cylinder(32,1,1); // Zahnstocher

			translate([-16,6.8,-1.5]) rotate([-45,90,0]) cylinder(32,.4,.4); //
				mirror([1,0,0])translate([-16,6.7,-1.5]) rotate([-45,90,0]) cylinder(32,.4,.4); // Büroklammer

		translate([0,-20,13]){ 
			cube([2,20,10], center=true);
	translate([0,10,-5])rotate([90,0,0]) cylinder(100,1.1,1.1);
}

		translate([6,-R-3.2,12.5]) rotate([0,90,0]){
				AllenBolt(M3, 14, hollow=true);
				translate([0,0,-14])FullNut(M3);
		}//schraube

	translate([0,0,12.37]) rotate_extrude()translate([R+9,0,0])difference(){ circle(5);translate([-4.5,0,0])circle(2.68);} // minus torus 4
        
	}



// Camera
*translate([-8.5-8.5/2,-5.5-8.5/2,-1]){
	difference(){
		union(){
			color("teal")cube([25,24,1]); // Platine
			color("grey"){ //Camera
				translate([8.5,5.5,1]) cube([8.5,8.5,5]);
				r=4;
				translate([8.5+r,5.5+r,1]) cylinder(5.2,r,r);
			}
			
		color("black"){ // Connector
				translate([7,5.5+8.5,1]) cube([8,10-2.7,1]);
			}
			
		color("brown"){ // Cable-Connector
				translate([2,0,-4]) cube([21,5,4]);
			}
		color("white"){ // Cable
				translate([4.5,-59,-2]) cube([16,61,.2]);
			}	

			
		}
		
		// Löcher
		r=1;
		translate([2,8.5+r,-1]) cylinder(3,r,r);
		translate([2,8.5+r+10.5+r+r,-1]) cylinder(3,r,r);
		translate([25-2,8.5+r,-1]) cylinder(3,r,r);
		translate([25-2,8.5+r+10.5+r+r,-1]) cylinder(3,r,r);
	}
}




		



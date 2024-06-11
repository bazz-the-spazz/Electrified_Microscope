include <ScrewsMetric/ScrewsMetric.scad>;
$fn=100;


*translate([8,0,52.5])rotate([0,180,-90])scale([10,10,10])import("StepMotorModel.stl"); // motor
//halter
h=6;
color("blue", alpha=1){
	y=37;
difference(){
	
union(){
	translate([8,17.5,y])cylinder(h,5,5); // schraubenansatz
	translate([3,0,y])cube([10,17.5,h]); // 
	mirror([0,1,0]){
		translate([8,17.5,y])cylinder(h,5,5); // schraubenansatz
	translate([3,0,y])cube([10,17.5,h]); // 

	}
	
	translate([0,0,y])cylinder(h,15,15); // grundplatte
	
		
	}
	translate([8,17.5,0])cylinder(50,2,2);
	translate([8,17.5,y])FullNut(M4, hollow=true);
	mirror([0,1,0])translate([8,17.5,0])cylinder(50,2,2);
	mirror([0,1,0])translate([8,17.5,y])FullNut(M4, hollow=true);
	
	*translate([0,0,y-1])cylinder(6,9,8); // 
    
    r=4.5;
translate([0,0,y-.5])rotate_extrude()translate([9-r+.1,0,0])circle(r);
	
    translate([0,0,y])cylinder(20,3.25,3.25); // motorwelle
    
	
	
	rotate([0,0,0]){
		translate([9.5,0,0]) cylinder(100, 3,3);
		translate([-9.5,0,0]) cylinder(100, 3,3);
	}
	rotate([0,0,45]){
		translate([9.5,0,0]) cylinder(100, 3,3);
		translate([-9.5,0,0]) cylinder(100, 3,3);
	}
	rotate([0,0,-45]){
		translate([9.5,0,0]) cylinder(100, 3,3);
		translate([-9.5,0,0]) cylinder(100, 3,3);
	}
	rotate([0,0,90]){
		translate([9.5,0,0]) cylinder(100, 3,3);
		translate([-9.5,0,0]) cylinder(100, 3,3);
	}
    
    translate([8,0,52.5])rotate([0,180,-90])scale([10,10,10])import("StepMotorModel.stl"); // motor
//halter
	
}

// outer ring
translate([0,0,y-1]){
difference(){
			cylinder(h+1, 20.5,20.5);
		translate([0,0,-1])cylinder(45, 18.5,18.5);
	translate([5,-30,-1])cube([60,60,10]);
}
difference(){
	translate([-19,-6,0])cube([6,12,h+1]);
	translate([-18,0,-1])cylinder(h+2,1,1);
}
}
}



//fix				
color("yellow", alpha=1){
	difference(){
    union(){ 
        cylinder(6.8, 14+3, 14+3);
        translate([16,-6,0])cube([7,12,13]);
		translate([15,-6,0])cube([10.35,12,3.4]);
		translate([21.95,6,3.66])rotate([90,0,0])cylinder(12,6.8/2,6.8/2);
              
          

        
        
          // ständer
		difference(){
            union(){
			cylinder(45, 18,18);
            
            }
                
           r=8; translate([0, 0,6.8+r])rotate_extrude() translate([16-r+.01, 0,0]) circle(r = r-.01); // -torus
						
		translate([0,0,6.8+r])cylinder(45, 16,16); // - zentralloch
		translate([0,0,6.8])cylinder(45, 2,2); // - zentralloch2
						
			 y=20;
			
			rotate([0,0,-90]){
				translate([0,0,y])rotate([90,0,0])cylinder(100,6,6);
				translate([0,0,y-9])rotate([90,0,0])cylinder(100,.8,.8);
				rotate([0,0,-135])translate([0,0,y-10])rotate([90,0,0])cylinder(100,.8,.8);
				rotate([0,0,135])translate([0,0,y-10])rotate([90,0,0])cylinder(100,.8,.8);
			 translate([-6,-50,y])cube([12,50,100]);
			}
			
			translate([18,030,y-12]){
				translate([0,0,y])rotate([90,0,0])cylinder(100,15,15);
			 translate([-15,-50,y])cube([30,50,100]);
			}
			
			}
        
        
    }
    translate([0,0,-1])cylinder(4.8+1, 14, 14);  // Ständerloch
    cylinder(12.1, 19.2/2,19.2/2);  // Fokustriebloch
    translate([0,-1.25,0])cube([50,2.5,50]);  // Schlitz
    translate([21,10,3.4])rotate([90,0,0])cylinder(40,1,1); // Schraubenloch
    
    r=7; translate([0, 0,6.8+r])rotate_extrude() translate([18+r, 0,0]) circle(r = r); //torus
    
     color("silver")union(){// Schraube
			x=10;
			translate([21,-6,3.5])rotate([90,0,0]){
				AllenBolt(M3, 14,$fn=50, hollow=true);
				translate([0,0,-13.8])FullNut(M3, $fn=100, hollow=true);
		}}
}

}





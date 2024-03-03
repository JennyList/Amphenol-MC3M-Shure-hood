//
//  A 3D-printeable hood for the Amphenol MC3M plug required for a Shure Unidyne III microphone.
//  Copyright (c) Jenny List 2023,2024.
//
//  Released under the CERN-OHL-S 2.0
//  When distributing this file, its derivatives, or products made from it or them
//  you MUST include the URL of the original distribution
//  at https://github.com/JennyList/Amphenol-MC3M-Shure-hood/
//



rotate([180,0,0]){
    translate([0,0,-9.3]){
        //socket body
        difference(){
            cylinder(9.3,12,12, $fn=90); //mic body diameter
           /* translate([0,0,3]){ //shift up to make base of socket
                difference(){
                    cylinder(6.3,10.25,10.25, $fn=90); // outside of ring
                    cylinder(6.3,9,9, $fn=90);//inside of ring
                }
            } */
            cylinder(9.3,10.3,10.3, $fn=90); //outside of socket inner cylinder  
            
        }
        translate([7.5,-1.6,0]) cube([4.3,3.2,9.3]); //notch

        //strain relief cone
        translate([0,0,-30]){
            difference(){ //outer shell
                cylinder(30,6,12, $fn=90); //strain relief shell
                cylinder(30,3,10.3, $fn=90); //inside ofstrain relief shell
                difference(){
                    translate([-12,0,0]) cube([25,25,30]); //cut out half
                    translate([-2.5,10.5,25]) cube([5,5,5]);  // leave a gap for a tab
                }
            }
            difference(){ //inner rib
                cylinder(30,4.5,10.5, $fn=90); //rib itself
                cylinder(30,3,9, $fn=90); //inside of rib
                translate([-12,1,0]) cube([25,25,30]);
                translate([-12,-26,0]) cube([25,25,30]);

            }
            difference(){ //cable tie ring
                union(){
                    translate([0,0,-1.5]) cylinder(1.5,6,6, $fn=90);
                    translate([0,0,-4]) cylinder(2.5,5.5,5.5, $fn=90);
                    translate([0,0,-5.5]) cylinder(1.5,6,6, $fn=90);
                }
                translate([0,0,-10]) cylinder(10,3,3, $fn=90);
                translate([-12.5,0,-10]) cube([25,25,10]);
            }
        }
    }
    //strain relief cover
    translate([30,0,-30]){
        difference(){ //outer shell
            difference(){
                cylinder(30,6,12, $fn=90); //strain relief shell
                translate([-2.75,10.25,25]) cube([5.5,5,5]);  // leave a gap for a tab
            }
            cylinder(30,3,9, $fn=90); //inside ofstrain relief shell
            translate([-12,-25,0]) cube([25,25,30]);
            difference(){ //inner rib
                cylinder(30,4.75,10.75, $fn=90); //rib itself
                cylinder(30,3,9, $fn=90); //inside of rib
                translate([-12,1,0]) cube([25,25,30]);
            }
        } 
        difference(){ //cable tie ring
            union(){
                    translate([0,0,-1.5]) cylinder(1.5,6,6, $fn=90);
                    translate([0,0,-4]) cylinder(2.5,5.5,5.5, $fn=90);
                    translate([0,0,-5.5]) cylinder(1.5,6,6, $fn=90);
            }
            translate([0,0,-10]) cylinder(10,3,3, $fn=90);
            translate([-12.5,-25,-10]) cube([25,25,10]);
        }
    }
}
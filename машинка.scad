$fn=25;
module kol(){rotate([90,0,0])difference(){
    intersection(){
    cylinder(1,2.5,2.5,true);
    scale([2.5,2.5,1]) sphere(1.05);
}   translate([0,0,1.2]) scale([0.25,0.25,0.1])sphere(1.05);
    cylinder(1.1,0.25,0.25,true);
    for(i=[1:12]){
    rotate([0,0,i*30])
    translate([1.3,0,0])
    scale([3,1,1])
        cylinder(1.1,0.2,0.2,true,$fn=4);}
        for(i=[1:36]){
    rotate([0,0,i*10])
    translate([3,0,0])
    scale([3,1,1])
        cylinder(1.1,0.2,0.2,true,$fn=4);}}}
module os() {
        rotate([90,0,0])cylinder(11,0.26,0.26);}
union(){difference(){intersection(){
    translate([-3.25,-5,0])cube([16.5,10,7]);
    translate([5,0,1])
    scale([4.8,4,3])
    sphere(2);
    }
    translate([0,5,0])scale([3,1,3])sphere([1]);
    translate([10,-5,0])scale([3,1,3])sphere([1]);
    translate([0,-5,0])scale([3,1,3])sphere([1]);
    translate([10,5,0])scale([3,1,3])sphere([1]);}
translate([10,5,0])kol();
translate([0,5,0])kol();
translate([0,-5,0])kol();
translate([10,-5,0])kol();
translate([-0.8,0,7.5])
    rotate([30,0,90])kol();
    translate([0,5.5,0]) os();
        translate([10,5.5,0])
        os();
        difference(){intersection(){
            translate([-3.5,-5,3])
            cube([13,10,7]);
            translate([2.5,0,5])
            scale([2,2,2])
            sphere(3);
            }translate([-12.5,-5,7])
            rotate([0,30,0])
            cube([10,10,10]);
            translate([5,-5,10])
            rotate([0,65,0])
            cube([10,10,10]);
            translate([-3,-5.3,5])
            rotate([65,0,0])
            cube([10,10,10]);
            translate([-12.5,-5,7])
            rotate([0,30,0])
            cube([10,10,10]);}}
        
        
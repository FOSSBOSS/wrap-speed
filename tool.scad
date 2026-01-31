module cone(){
scale([0.155,0.155,0.6]){
rotate_extrude(angle = 360, start=0, convexity = 0) {
import("cone.svg");
}
}
}

module coord(){
$fn = 314;
//shaft
h=90;
a=30;
b=25;
c=(a-b)/2; 
difference(){
difference(){
cylinder(h,a,a);
cylinder(h,b,b);
}
cube(h,c,c);
}
translate([a-c,0,0]) cylinder(h,c,c);// a cylinder whose cross section is the approx size of the wall it crosses.
translate([0,b+c,0]) cylinder(h,c,c);

}
difference(){
union(){
rotate([0,0,140]) coord();
rotate([0,45,0])translate([-10,0,25])cone();
}
cylinder(90,25,25); // im trying to subtract the object in this space.

}

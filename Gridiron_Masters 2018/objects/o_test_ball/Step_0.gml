/// @description 
///Destroy if more than 1
if instance_number(o_ball) > 1 {
	instance_destroy();
}

//Depth & Z Depth & Rotation
depth = -y;


//Deceleration
speed -= decel;

//Clamp Speed
if speed <=0 {
    spin = false;
    speed = 0;
    }
   
//Spin In Air
if (spin) {
    image_angle +=spinDir;
    }

//Z Height
zvel+=zgrav;
z+=zvel;

//Bounce
if(z>0)
{
    //Allow ball to random change direction on bounce
    if (dir_Change) {
            if spin = false {
                spin = true;
                }
            direction = random_range(direction - 25, direction + 25);
            speed +=1.3;
            spinSpeed = 25;

            dir_Change = false;
            }
z = 0;
zvel*=-.43; //flip and bounce
}

//If Too High Then Ball Cannot Be Caught
if z < -8  {
	catchable = false;
	//show_message(string(z) + "-not catcheable")

} 
if z >= -8 {
	catchable = true;	
	//show_message(string(z) + "-catcheable")
} 
	     
	







/// scrMove(speed, dir)
var spd = argument0;
var dir = argument1;
var dirX = lengthdir_x(spd, dir);
var dirY = lengthdir_y(spd, dir);

if(dir < 0)
    return noone;
    
//Extra check to stop freezing?
if((point_distance(0,0,dirX,dirY) > 0))
{
    if(place_meeting(x+dirX,y,parObstacle))
    {
        while(!place_meeting(x+sign(dirX), y, parObstacle))
        {
            x += sign(dirX);
        }                

        var yy = round(y/16)*16; // Round to  nearest tile coordinate
        
        // Move up if there's nothing in the way
        if(!place_meeting(x+(sign(dirX)), yy-8, parObstacle) && dirY == 0)
        {
            y-=1;// Move up
        }

        // Move down if there's nothing in the way
        if(!place_meeting(x+(sign(dirX)), yy+8, parObstacle) && dirY == 0)
        {
            y+=1;// Move down
        }
        
        dirX=0;
    }
    
    if(place_meeting(x,y+dirY,parObstacle))
    {
        while(!place_meeting(x, y+(sign(dirY)), parObstacle))
        {
            y += sign(dirY);
        }
        
        var xx = round(x/16)*16; // Round to  nearest tile coordinate
        
        // Move left if there's nothing in the way
        if(!place_meeting(xx-8, y+(sign(dirY)), parObstacle) && dirX == 0)
        {
            x-=1;// Move Left
        }
        
        // Move right if there's nothing in the way
        if(!place_meeting(xx+8, y+(sign(dirY)), parObstacle) && dirX == 0)
        {
            x+=1;// Move Right
        }
        dirY=0;
    }
}
x += dirX;
y += dirY;


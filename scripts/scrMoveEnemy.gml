/// scrMove(speed, dir)
var spd = argument0;
var dir = argument1;
var dirX = lengthdir_x(spd, dir);
var dirY = lengthdir_y(spd, dir);

if(dir < 0)
    return noone;

if(place_meeting(x+dirX,y,objWall))
{
        while(!place_meeting(x+sign(dirX), y, objWall))
        {
            x += sign(dirX);
        }                

        var yy = round(y/16)*16; // Round to  nearest tile coordinate
        
        // Move up if there's nothing in the way
        if(!place_meeting(x+(sign(dirX)), yy-8, objWall) && dirY == 0)
        {
            y-=1;// Move up
        }

        // Move down if there's nothing in the way
        if(!place_meeting(x+(sign(dirX)), yy+8, objWall) && dirY == 0)
        {
            y+=1;// Move down
        }
        
        dirX=0;
}

if(place_meeting(x,y+dirY,objWall))
{
        while(!place_meeting(x, y+(sign(dirY)), objWall))
        {
            y += sign(dirY);
        }
        
        var xx = round(x/16)*16; // Round to  nearest tile coordinate
        
        // Move left if there's nothing in the way
        if(!place_meeting(xx-8, y+(sign(dirY)), objWall) && dirX == 0)
        {
            x-=1;// Move Left
        }
        
        // Move right if there's nothing in the way
        if(!place_meeting(xx+8, y+(sign(dirY)), objWall) && dirX == 0)
        {
            x+=1;// Move Right
        }
        dirY=0;
}

x += dirX;
y += dirY;

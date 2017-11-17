var i, fid, _x, _y, ox, oy, text, font, scale, columns, width, height;

_x = argument0;
_y = argument1;
text = argument2;
font = argument3;
ox = 0;
oy = 0;
scale=global.Scale;
width = 8;
height = 8;
columns = 14;

for(var i=1; i<=string_length(text); ++i)
{
    //Get character ASCII value
    fid = ord(string_char_at(text,i));
    
    //New Line
    if(fid==ord("~"))
    {
        oy+=height*scale;
        ox=0;
    }//Draw Characters
    else if(fid>31 and fid<127)
    {
        fx = (fid-32) % columns * width;
        fy = floor((fid-32) / columns) * width;
        draw_background_part(font, fx, fy, width, height,_x+ox, _y+oy);
        ox += width;
    }
}                 


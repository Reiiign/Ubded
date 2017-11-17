///scrPickSpawnLocation()

var r = irandom_range(0,3);
var viewleft = view_xview[0];
var viewtop = view_yview[0];
var viewright = viewleft + view_wview[0];
var viewbottom = viewtop + view_hview[0];
var xx,yy;

switch(r)
{
    case 0://Up
        yy = viewtop - 32;
        xx = irandom_range(viewleft, viewright);
        break;
    case 1://Right
        xx = viewright + 32;
        yy = irandom_range(viewtop, viewbottom);
        break;
    case 2://Down
        yy = viewbottom + 32;
        xx = irandom_range(viewleft, viewright);
        break;
    case 3://Left
        xx = viewright - 32;
        yy = irandom_range(viewtop, viewbottom);
        break;
}

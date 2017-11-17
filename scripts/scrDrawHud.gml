///DrawHud
if(global.Player.Health > 0)
{
    var lengthMod = global.Player.Health / global.Player.MaxHealth;

    draw_rectangle_colour(HealthbarX,HealthbarY,HealthbarX+lengthMod*64,HealthbarY+16,c_red,c_red,c_red,c_red,false);
}

var gap = 0;
var ix,iy;

//Draw Hotbar
for(var i = 0; i < Item.Total; ++i)
{
    gap = i*4;
    ix = i*(16*global.Scale) + gap;
    iy = 0;
    
    draw_sprite_ext(sprWeapons,i,ix+16,16,global.Scale,global.Scale,0,c_white,1);
    
    if(global.Player.Weapon == i)
        draw_rectangle_colour(ix,0,ix+32,32,c_white,c_white,c_white,c_white,true);
}

if(global.bGameOver)
{
    draw_background_ext(bgGameOver,0,0,global.Scale,global.Scale,0,c_white,1);
    
}

scrDrawText(view_wview[0]/2,0,string(Minutes)+":"+string(Seconds),bgFontWhite);

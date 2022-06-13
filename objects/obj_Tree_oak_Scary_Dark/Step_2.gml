if place_meeting(x,y,obj_Player)
{
    if (!isIntersecting) {
		layer_create(-100, "UI");
		scary_dark = instance_create_layer(obj_Player.x, obj_Player.y, "UI", obj_Scary_Dark);
		with(scary_dark) {
			parent = other;
		}
		isIntersecting = true;
	} 
} else {
	if (isIntersecting) {
		isIntersecting = false;
		with(obj_Scary_Dark) {
			self_destruct = true;	
		}
	}
}

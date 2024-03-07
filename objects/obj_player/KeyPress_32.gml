
	if global.pause == true 
	{
	exit;
	}
	var collisions_dslist = ds_list_create();
	var collisions_count = collision_rectangle_list(bbox_left, bbox_top, bbox_right, bbox_bottom, all, false, true, collisions_dslist, true);
	
	for (var i = 0; i < collisions_count; i=i+1;)
    {
        if asset_has_tags(collisions_dslist[|i].object_index, "Interactable", asset_object)
			{
			if (method_call(collisions_dslist[|i].interact,[]))
				{
				exit;
				}
			}
    }
	
	create_textbox(" Self", "*I miss them*", spr_player);
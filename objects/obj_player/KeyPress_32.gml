
	if global.pause == true 
	{
	exit;
	}
	var collisions_dslist = ds_list_create();
	var collisions_count = collision_rectangle_list(bbox_left, bbox_top, bbox_right, bbox_bottom, all, false, true, collisions_dslist, true);
	
	for (var i = 0; i < collisions_count; i=i+1;)
    {
		show_debug_message(collisions_dslist[|i]);
        if asset_has_tags(collisions_dslist[|i], "Interactable", asset_object)
			{
			show_debug_message("interactable")
			if (instance_id_get(collisions_dslist[|i]).interact())
				{
				show_debug_message("interacted")
				exit;
				}
			}
    }
	
	create_textbox(" Self", "*I miss them*", spr_player);
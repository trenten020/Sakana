/// @description MOVE THE VIEW
#region MOVE THE VIEW

halfViewWith = camera_get_view_width(view_camera[0]) / 2;
halfViewHeight = camera_get_view_height(view_camera[0]) /2 ;

camera_set_view_pos(view_camera[0], x - halfViewWith, y - halfViewHeight);

#endregion
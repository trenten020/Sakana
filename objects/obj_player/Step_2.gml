/// @description MOVE THE VIEW
#region MOVE THE VIEW

var halfViewWith = camera_get_view_width(view_camera[0]) / 2;
var halfViewHeight = camera_get_view_height(view_camera[0]) /2 ;

camera_set_view_pos(view_camera[0], x - halfViewWith, y - halfViewHeight);

#endregion
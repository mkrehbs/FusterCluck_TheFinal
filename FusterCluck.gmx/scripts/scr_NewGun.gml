if(instance_exists(obj_Gun)){with(obj_Gun){instance_destroy();}}
instance_create(obj_Player.x,obj_Player.y,obj_Gun);
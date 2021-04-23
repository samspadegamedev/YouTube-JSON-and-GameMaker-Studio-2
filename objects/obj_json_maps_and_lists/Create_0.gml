/// @description JSON Tester


#region //auto create a folder
//var _file = file_text_open_write("temp");
//file_text_close(_file);
#endregion

#region //importing json code
#region //using built in functions to import
//var _file = file_text_open_read("json_example_1_one_line.txt");
//json_example_string = file_text_read_string(_file);
//file_text_close(_file);
//json_example_1 = json_decode(json_example_string);
#endregion

#region //Using a custom import function
//json_example_1 = import_json("json_example_1.txt");
//json_example_2 = import_json("json_example_2.txt");
#endregion

#region //destroying imported JSON Files
//ds_map_destroy(json_example_1);
//ds_map_destroy(json_example_2);
#endregion
#endregion

#region //exporting json code

//make a json file to export
json_export_map = ds_map_create();

json_export_map[? "number"] = 125;
json_export_map[? "string"] = "Hello World";
json_export_map[? "boolean true"] = true;
json_export_map[? "boolean false"] = false;

var sub_map = ds_map_create();
sub_map[? "string"] = "Goodbye";
sub_map[? "question"] = "How are you?";
ds_map_add_map(json_export_map, "sub map", sub_map);
json_export_map[? "sub map"][? "another question"] = "Just one more thing.";


var sub_list = ds_list_create();
ds_list_add(sub_list, 0, 1, 2, ["Hello World", "Goodbye"]);
ds_map_add_list(json_export_map, "sub list", sub_list);
ds_list_add_list(sub_list, ds_list_create());
ds_list_add_map(sub_list, ds_map_create());

json_export_map[? "sub map"][? "a map"] = ds_map_create();


json_export_string = json_encode(json_export_map)

//export the json file
export_json("json_export.txt", json_export_map, json_encode);

//destroy the maps
ds_map_destroy(json_export_map);

//load it again
json_export_map = import_json("json_export.txt");

//destroy the maps
ds_map_destroy(json_export_map);

#endregion

show_debug_message("tests complete");


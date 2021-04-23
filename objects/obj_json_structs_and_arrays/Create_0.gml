/// @description JSON Structs and Arrays



#region //importing

////single line direct imports
//var _file, _json_example_string;
//_file = file_text_open_read("json_example_1_one_line.txt");
//_json_example_string = file_text_read_string(_file);
//file_text_close(_file);

//json_example_maps_lists = json_decode(_json_example_string);
//json_example_structs_arrays = json_parse(_json_example_string);
//ds_map_destroy(json_example_maps_lists);


////multi-line imports using a custom function
//json_example_maps_lists = import_json("json_example_2.txt", json_decode);
//json_example_structs_arrays = import_json("json_example_2.txt", json_parse);
//ds_map_destroy(json_example_maps_lists);

#endregion 

#region //exporting

top_struct = {
	my_array : [0, 1, 2, 3],
	my_struct: {
		nested_array : [
			[0, 1, 2],
			[2, 4, 8],
			[true, false]
		],
		nested_struct: {}
	},
	my_string: "Hello World",
	my_number: 125,
	my_boolean: true
}

top_array = [
	{greeting : "Hello World"},
	[0, 1, 2, 3],
	true,
	{
		nested_array : [0, 1, 2],
		nested_struct : {
			a_boolean : true,
			another_boolean : false
		}
	}
]

export_json("struct_example.txt", top_struct, json_stringify); 
export_json("array_example.txt", top_array, json_stringify); 

loaded_struct = import_json("struct_example.txt", json_parse);
loaded_array = import_json("json_example_1.txt", json_parse);

#endregion

show_debug_message("Example Finished");
/// @description JSON Save Debug Steps


save_data = {
	my_array : [0, 1, 2, 3],
	my_string: "Goodbye",
	my_number: 125,
}


export_json("save_example.txt", save_data, json_stringify); 

loaded_save_data = import_json("save_example.txt", json_parse);


show_debug_message("Example Finished");


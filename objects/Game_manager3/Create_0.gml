//currentRoom = "rm_in_bed";

linesbefore = 0;
global.met_voice = true;



var json = "";
var file = file_text_open_read(working_directory + "mystery.json");
while (file_text_eof(file) == false){
	json += file_text_readln(file)
}
file_text_close(file)
global.map = json_parse(json);


linesnumber = 0;
choosenumber = 1;
isclick = false;
objectname = "none";
truedetect = false;

global.has_key = false;
thingstocheck = 0;


playerstate = State.Text;
textstate = "text";
roomnow = "rm_kitchen";


//global.roomnow = global.map[$ "rm_in_bed"];
//global.lines = global.roomnow[$ "lines"];
//global.words = global.lines[@ linesnumber];
//global.text = global.words[$ "text"];

//show_debug_message(global.text)

function Textfunction(){
	if (textstate = "text"){
	  if (is_undefined(global.text)) {
	Textbox.visible = false;
	playerstate = State.Choice
}
	global.roomnow = global.map[$ roomnow];
	global.lines = global.roomnow[$ "lines"];
	show_debug_message(linesnumber)
		show_debug_message(array_length(global.lines))
	
	if (is_undefined(global.lines)||linesnumber=array_length(global.lines)){
		textstate = "interact";
		linesnumber = 0;
		exit;
	}
	global.words = global.lines[@ linesnumber];
	global.text = global.words[$ "text"];
	Textbox.visible = true;

if (!is_undefined(global.words[$ "goto"])) {

    if (keyboard_check_pressed(vk_space)) {

var roomName = global.words[$ "goto"];


       
        var roomIndex = asset_get_index(roomName);

        room_goto(roomIndex);
    }
}
		
		
		

	if (keyboard_check_pressed(vk_space)) {
	linesnumber += 1;
}
	}
	
	if textstate = "interact"{
		Textbox.visible = false;
//		if (isclick = true){
//			Textbox.visible = true;
//			global.interactables = global.roomnow[$ "interactables"];
//			global.object = global.interactables[$ objectname];
//			global.lines = global.object[$ "lines"];
//			if (truedetect == false){
		
//				if (linesnumber=array_length(global.lines)){
//				Textbox.visible = false;
//				isclick = false;
//				linesnumber = 0;
//				exit;
//			}
//			global.words = global.lines[@ linesnumber];
//			if (!is_undefined(global.words[$ "set_true"])){
//		global.settrue = global.words[$ "set_true"];
//			variable_global_set(global.settrue, true);
			
//	}
//	global.text = global.words[$ "text"];
			
//				 if (keyboard_check_pressed(vk_space)) {
//	linesnumber += 1;
//	 }
//	}
		
//		if (truedetect == true){

//				if (linesnumber=array_length(global.lines)){
//				Textbox.visible = false;
//				isclick = false;
//				linesnumber = 0;
//				truedetect = false;
//				exit;
			
//			}
//					global.words = global.lines[@ linesnumber];
				
//		global.lines = global.words[$ "lines"];
//		global.words = global.lines[@ linesnumber];
//			if (!is_undefined(global.words[$ "set_true"])){
//		global.settrue = global.words[$ "set_true"];
//			variable_global_set(global.settrue, true);

//	}
//	if (!is_undefined(global.words[$ "goto"])){
		
//    if (keyboard_check_pressed(vk_space)) {

//var roomName = global.words[$ "goto"];


       
//        var roomIndex = asset_get_index(roomName);

//        room_goto(roomIndex);
//    }
//	}
		
//	global.text = global.words[$ "text"];
			
//				 if (keyboard_check_pressed(vk_space)) {
//	linesnumber += 1;
//	 }
//	}
//		}
if ( isclick = true){
	Textbox.visible = true;
	if (linesbefore = 0&&global.lines != global.object[$ "lines"]){
	linesbefore = global.lines
	}
	
	global.words = global.lines[@ linesnumber];
	if (variable_struct_exists(global.words, "if_true")) {
show_debug_message("whatsdsd")
   if(variable_global_get(global.words[$ "if_true"]) == true){
   global.lines = global.words[$ "lines"];
   linesnumber = 0;
     global.words = global.lines[@ linesnumber];

   }else{
	   linesnumber += 1;
   }
}

		global.text = global.words[$ "text"];
		 if (keyboard_check_pressed(vk_space)) {
			 show_debug_message(linesnumber)
	linesnumber += 1;

	
	 }			 
	 if (linesnumber=array_length(global.lines)){
show_debug_message("wdwdwdwd")
			if (global.lines = linesbefore){
				isclick = false;
				linesbefore = 0;
				linesnumber = 0;
				exit
			}
			if (linesbefore = 0){
				isclick = false;
				linesnumber = 0;
				exit
			}
			
			global.lines = linesbefore
				
				linesnumber = 0;
				exit;			
			}
}
	}
	if ( textstate = "choice"){
		if (choosenumber == 1){
	 global.choiceline1 =  global.choice1[$ "lines"];
	 global.choicetext1pre = global.choiceline1[@ 0];
	 global.text = global.choicetext1pre[$ "text"];
	 Textbox.visible = true;

	 if (keyboard_check_pressed(vk_space)) {
	textstate = "text"
	linesnumber += 1;
	 }
}
if (choosenumber == 2){
			  global.choiceline2 =  global.choice2[$ "lines"];
	  global.choicetext2pre = global.choiceline2[@ 0];
	 global.text = global.choicetext2pre[$ "text"];
	 Textbox.visible = true;

	 if (keyboard_check_pressed(vk_space)) {
	textstate = "text"
	linesnumber += 1;
	 }
}
	}
}


  


function Choicefunction(){
	 textstate = "choice";
	 global.choices = global.words[$ "choices"];
	 global.choice1 = global.choices[@ 0];
	 global.choice2 = global.choices[@ 1];
	 global.choicetext1 = global.choice1[$ "text"];
	 global.choicetext2 = global.choice2[$ "text"];
	 
	 
	 //global.choiceline1 =  global.choice1[$ "lines"];
	 //global.choiceline2 =  global.choice2[$ "lines"];
	 //global.choicetext1pre = global.choiceline1[@ 0];
	 //global.choicetext2pre = global.choiceline2[@ 0];
	 //global.choicetext1 = global.choicetext1pre[$ "text"];
	 //global.choicetext2 = global.choicetext2pre[$ "text"];
	 Textbox1.visible = true;
	 Textbox2.visible = true;
	 
	 if (keyboard_check_pressed(ord("1"))) {
	 Textbox1.visible = false;
	 Textbox2.visible = false;
	 playerstate = State.Text;
	 choosenumber = 1;

}

 if (keyboard_check_pressed(ord("2"))) {
	 Textbox1.visible = false;
	 Textbox2.visible = false;
	 playerstate = State.Text;
	 choosenumber = 2;

}
	
	
	
}





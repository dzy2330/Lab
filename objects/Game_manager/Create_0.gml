//currentRoom = "rm_in_bed";

var json = "";
var file = file_text_open_read(working_directory + "mystery.json");
while (file_text_eof(file) == false){
	json += file_text_readln(file)
}
file_text_close(file)
global.map = json_parse(json);


linesnumber = 0;

enum State {
    Choice,
    Text,
}
playerstate = State.Text;
textstate = "text";
roomnow = "rm_in_bed";


//global.roomnow = global.map[$ "rm_in_bed"];
//global.lines = global.roomnow[$ "lines"];
//global.words = global.lines[@ linesnumber];
//global.text = global.words[$ "text"];

//show_debug_message(global.text)

function Textfunction(){
	Textbox.visible = true;
	global.roomnow = global.map[$ roomnow];
	global.lines = global.roomnow[$ "lines"];
	global.words = global.lines[@ linesnumber];
	global.text = global.words[$ "text"];
	if (keyboard_check_pressed(vk_space)) {
	linesnumber += 1;
}
    if (is_undefined(global.text)) {
	Textbox.visible = false;
	playerstate = State.Choice
}
	
}

function Choicefunction(){
	 textstate = "choice";
	 global.choices = global.words[$ "choices"];
	 global.choice1 = global.choices[@ 0];
	 global.choice2 = global.choices[@ 1];
	 global.choiceline1 =  global.choice1[$ "lines"];
	 global.choiceline2 =  global.choice2[$ "lines"];
	 global.choicetext1pre = global.choiceline1[@ 0];
	 global.choicetext2pre = global.choiceline2[@ 0];
	 global.choicetext1 = global.choicetext1pre[$ "text"];
	 global.choicetext2 = global.choicetext2pre[$ "text"];
	 Textbox1.visible = true;
	 Textbox2.visible = true;
	
	
	
}






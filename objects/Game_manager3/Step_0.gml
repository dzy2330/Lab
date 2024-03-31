
//if (keyboard_check_pressed(vk_space)) {
//	linenumber += 1;
//}
//global.roomnow = global.map[$ roomnow];
//global.lines = global.roomnow[$ "lines"];
//global.words = global.lines[@ 1];
//global.text = global.words[$ "text"];
//global.choices = global.words[$ "choices"];

//global.choice1 = global.choices[@ 0];
//global.choice2 = global.choices[@ 1];

//show_debug_message(global.choice1);

switch (playerstate)
{
    case State.Choice:
      Choicefunction();
    break;
	


    case State.Text:
       Textfunction();
	  break;
}


													//4:text
//interactables  1:object struct 2: lines 3:line 0 4:if has if_true    5:true 6:lines
//																	 5:false
//if ( isclick = true){
//	Textbox.visible = true;
//	if (linesbefore = 0){
//	linesbefore = global.lines
//	}
//	global.words = global.lines[@ linesnumber];
//	if (variable_struct_exists(global.words, "if_true")) {
//   if(variable_global_get(global.words[$ "if_true"]) == true){
//   global.lines = global.words[$ "lines"];
//   linesnumber = 0;
//   }else{
//	   linesnumber += 1;
//   }
//}
//		global.text = global.words[$ "text"];
//		 if (keyboard_check_pressed(vk_space)) {
//	linesnumber += 1;
//	 }
//			 if (linesnumber=array_length(global.lines)){
//			if (global.lines = linesbefore){
//				isclick = false;
//				exit
//			}
//			global.lines = linesbefore
//				linesnumber = 0;
//				exit;			
//			}
//}

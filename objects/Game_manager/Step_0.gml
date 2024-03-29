
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



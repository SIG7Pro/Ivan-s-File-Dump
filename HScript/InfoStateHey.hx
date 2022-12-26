package;

import flixel.FlxG;
import flixel.FlxState;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;

//import("MainMenuState");
//optional lol
var curtains:FlxSprite;
var bg:FlxSprite;
var gf:FlxSprite;

function create(){
 
		titlestatebg = new FlxBackdrop(Paths.image('titlescreen/notsoloading'), 0.2, 0, true, true);
		titlestatebg.velocity.set(200, 110);
		titlestatebg.updateHitbox();
		titlestatebg.alpha = 0.5;
		titlestatebg.screenCenter(X);
		add(titlestatebg);

    gf = new FlxSprite(500, 0).loadGraphic(Paths.image('misc/Ivn'));
	 gf.screenCenter();
	 gf.scale.x = 0.5;
    gf.scale.y = 0.5;
    gf.antialiasing = true;
    add(gf);

super.create();

		var button = new FlxButton(0, -100, "Return To Main Menu", onButtonClicked);
		button.screenCenter();
		button.scale.x = 3;
      button.scale.y = 3;
		add(button);
		
		var text = new FlxText(-450, 0);
		
		//text control below, first parameter is the name of the sprite, second is the type, which is text, third is the actual text text
		text.text = "Hello, World! This mod isn't complete, but in the future it might!";
//		text.color = FlxColor.CYAN;
		text.size = 30;
		  //above controls how wide the text can get on one line
//		text.setBorderStyle(FlxTextBorderStyle.SHADOW, FlxColor.BLUE, 4);
//		text.screenCenter();
		text.setFormat(Paths.font("vcr.ttf"), 50, FlxColor.BLUE);
		text.scale.x = 0.5;
      text.scale.y = 0.5;
		  //above controls the actual text size
		add(text);

	}

	   if (FlxG.keys.justPressed.ENTER)
   {
      FlxG.switchState(new MainMenuState());
   }
	//above code doesn't do JACK
	//bro its 12 am already? i was supposed to get this out by yesterday!
	
	function onButtonClicked()
	{
		FlxG.camera.flash(FlxColor.WHITE, 0.33);
		FlxG.switchState(new MainMenuState()); 
	}




//breh i wanna lay down on some kirboobies
//...mmmmmm
//or eat some kirbus- bro did i hire a horny coder?
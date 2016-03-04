package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.text.FlxText;
import flixel.ui.FlxButton;
import flixel.util.FlxColor;

class MenuState extends FlxState
{
	private var background:FlxSprite;	
	private var playButton:FlxButton;
	private var creditsButton:FlxButton;
	private var audioButton:FlxButton;
	private var webButton:FlxButton;
	
	override public function create():Void
	{
		super.create();
		
		FlxG.debugger.visible = false;
		
		FlxG.camera.fade(FlxColor.BLACK, 0.5, true);
		
		background = new FlxSprite(0, 0, "assets/images/title.png");
		
		playButton = new FlxButton(FlxG.width / 2 - 40, FlxG.height * 0.65, "PLAY", onPlay);
		playButton.scale.set(2, 2);
		playButton.color = 0xff729954;
		playButton.label.color = 0xffd8eba2;
		
		webButton = new FlxButton(FlxG.width / 2 - 40, FlxG.height * 0.75, "MORE GAMES!", onWeb);
		webButton.scale.set(2, 2);
		webButton.color = 0xff729954;
		webButton.label.color = 0xffd8eba2;
		
		creditsButton = new FlxButton(FlxG.width / 2 - 40, FlxG.height * 0.85, "CREDITS", onCredits);
		creditsButton.scale.set(2, 2);
		creditsButton.color = 0xff729954;
		creditsButton.label.color = 0xffd8eba2;
		
		add(background);
		add(playButton);
		add(webButton);
		add(creditsButton);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
	
	private function onPlay():Void
	{
		FlxG.camera.fade(FlxColor.BLACK, 0.67, false, onFadeToPlayState);
	}
	
	private function onWeb():Void
	{
		FlxG.openURL("http://www.imagecampus.com/game-labs");
	}
	
	private function onCredits():Void
	{
		FlxG.camera.fade(FlxColor.BLACK, 0.67, false, onFadeToCreditsState);
	}
	
	private function onFadeToPlayState():Void
	{
		FlxG.switchState(new PlayState());
	}
	
	private function onFadeToCreditsState():Void
	{
		FlxG.switchState(new CreditState());
	}
}

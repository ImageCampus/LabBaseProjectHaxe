package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.tweens.FlxTween;

class SplashState extends FlxState
{
	private var imageCampusLogo:FlxSprite;
	private var devLogo:FlxSprite;
	
	override public function create():Void
	{
		super.create();
		
		imageCampusLogo = new FlxSprite();
		devLogo = new FlxSprite();
		
		imageCampusLogo.loadGraphic("assets/images/icLogo.png");
		devLogo.loadGraphic("assets/images/developerLogo.png");
		
		imageCampusLogo.alpha = 0;
		devLogo.alpha = 0;
		
		adjustScale(imageCampusLogo);
		adjustScale(devLogo);
		
		imageCampusLogo.setPosition((FlxG.width - imageCampusLogo.width) / 2, (FlxG.height - imageCampusLogo.height) / 2);
		devLogo.setPosition((FlxG.width - devLogo.width) / 2, (FlxG.height - devLogo.height) / 2);
		
		FlxTween.tween(imageCampusLogo, { alpha:1 }, 1, { onComplete: stayImageCampus } );
		
		add(imageCampusLogo);
		add(devLogo);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
	}
	
	private function adjustScale(s:FlxSprite):Void
	{
		var percent:Float = 1;
		if(FlxG.width * 0.9 <= s.width)
			percent = 0.8 * FlxG.width / s.width;
		if (FlxG.height * 0.9 <= s.height)
			percent = 0.8 * FlxG.height / s.height;
		s.scale.set(percent, percent);
	}
	
	private function stayImageCampus(tween:FlxTween):Void
	{
		FlxTween.tween(imageCampusLogo, { alpha:1 }, 1, { onComplete: fadeOutImageCampus });
	}
	
	private function fadeOutImageCampus(tween:FlxTween):Void
	{
		FlxTween.tween(imageCampusLogo, { alpha:0 }, 0.5, { onComplete: waitForDevLogo });
	}
	
	private function waitForDevLogo(tween:FlxTween):Void
	{
		FlxTween.tween(imageCampusLogo, { alpha:0 }, 0.67, { onComplete: fadeInDevLogo });
	}
	
	private function fadeInDevLogo(tween:FlxTween):Void
	{
		FlxTween.tween(devLogo, { alpha:1 }, 1, { onComplete: stayDevLogo });
	}
	
	private function stayDevLogo(tween:FlxTween):Void
	{
		FlxTween.tween(devLogo, { alpha:1 }, 1, { onComplete: fadeOutDevLogo });
	}
	
	private function fadeOutDevLogo(tween:FlxTween):Void
	{
		FlxTween.tween(devLogo, { alpha:0 }, 0.5, { onComplete: waitForChangeState });
	}
	
	private function waitForChangeState(tween:FlxTween):Void
	{
		FlxTween.tween(devLogo, { alpha:0 }, 0.67, { onComplete: changeState });
	}
	
	private function changeState(tween:FlxTween):Void
	{
		FlxG.switchState(new MenuState());
	}

}

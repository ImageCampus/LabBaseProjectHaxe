package;

import flixel.FlxG;
import flixel.FlxSprite;
import flixel.FlxState;
import flixel.group.FlxGroup.FlxTypedGroup;
import flixel.text.FlxText;

class CreditState extends FlxState
{	
	inline static private var TEXT_SPD:Float = -70;
	inline static private var NORMAL_TEXT_SIZE:Int = 16;
	
	private var everythingGroup:FlxTypedGroup<FlxSprite>;
	
	private var imageCampusLogo:FlxSprite;
	private var devLogo:FlxSprite;
	private var gameLogo:FlxSprite;
	
	private var aboutTitle:FlxText;
	private var aboutText:FlxText;
	private var studentsTitle:FlxText;
	private var student1Role:FlxText;
	private var student1Name:FlxText;
	private var student2Role:FlxText;
	private var student2Name:FlxText;
	private var student3Role:FlxText;
	private var student3Name:FlxText;
	private var professorsTitle:FlxText;
	private var professor1Role:FlxText;
	private var professor1Name:FlxText;
	private var professor2Role:FlxText;
	private var professor2Name:FlxText;
	private var professor3Role:FlxText;
	private var professor3Name:FlxText;
	
	override public function create():Void
	{
		super.create();
		
		everythingGroup = new FlxTypedGroup<FlxSprite>();
		
		imageCampusLogo = new FlxSprite();
		devLogo = new FlxSprite();
		gameLogo = new FlxSprite();
		aboutTitle = new FlxText(0, 0, 0, "ABOUT", NORMAL_TEXT_SIZE * 2);
		aboutText = new FlxText(0, 0, 0, "This game was created by students at Image Campus\nVisit www.imagecampus.com/game-labs\nfor more information", NORMAL_TEXT_SIZE);
		studentsTitle = new FlxText(0, 0, 0, "STUDENTS", NORMAL_TEXT_SIZE * 2);
		student1Role = new FlxText(0, 0, 0, "Game Design", NORMAL_TEXT_SIZE);
		student1Name = new FlxText(0, 0, 0, "Chiche Gelblung", NORMAL_TEXT_SIZE);
		student2Role = new FlxText(0, 0, 0, "2D Art", NORMAL_TEXT_SIZE);
		student2Name = new FlxText(0, 0, 0, "Milo Lockett", NORMAL_TEXT_SIZE);
		student3Role = new FlxText(0, 0, 0, "Programming", NORMAL_TEXT_SIZE);
		student3Name = new FlxText(0, 0, 0, "Pablo Lescano", NORMAL_TEXT_SIZE);
		professorsTitle = new FlxText(0, 0, 0, "PROFESSORS", 32);
		professor1Role = new FlxText(0, 0, 0, "Programming / Game Design", NORMAL_TEXT_SIZE);
		professor1Name = new FlxText(0, 0, 0, "Sergio Baretto", NORMAL_TEXT_SIZE);
		professor2Role = new FlxText(0, 0, 0, "2D Art", NORMAL_TEXT_SIZE);
		professor2Name = new FlxText(0, 0, 0, "Jorge Cuellar", NORMAL_TEXT_SIZE);
		professor3Role = new FlxText(0, 0, 0, "Programming / Game Design", NORMAL_TEXT_SIZE);
		professor3Name = new FlxText(0, 0, 0, "Ariel Cid", NORMAL_TEXT_SIZE);
		
		aboutTitle.setFormat(null, Std.int(NORMAL_TEXT_SIZE * 2), 0x00FF00, FlxTextAlign.CENTER);
		aboutText.setFormat(null, Std.int(NORMAL_TEXT_SIZE), 0xFFFFFF, FlxTextAlign.CENTER);
		studentsTitle.setFormat(null, Std.int(NORMAL_TEXT_SIZE * 2), 0x00FF00, FlxTextAlign.CENTER);
		student1Role.setFormat(null, Std.int(NORMAL_TEXT_SIZE * 1.5), 0x00FF00, FlxTextAlign.CENTER);
		student1Name.setFormat(null, Std.int(NORMAL_TEXT_SIZE * 1.5), 0xFFFFFF, FlxTextAlign.CENTER);
		student2Role.setFormat(null, Std.int(NORMAL_TEXT_SIZE * 1.5), 0x00FF00, FlxTextAlign.CENTER);
		student2Name.setFormat(null, Std.int(NORMAL_TEXT_SIZE * 1.5), 0xFFFFFF, FlxTextAlign.CENTER);
		student3Role.setFormat(null, Std.int(NORMAL_TEXT_SIZE * 1.5), 0x00FF00, FlxTextAlign.CENTER);
		student3Name.setFormat(null, Std.int(NORMAL_TEXT_SIZE * 1.5), 0xFFFFFF, FlxTextAlign.CENTER);
		professorsTitle.setFormat(null, Std.int(NORMAL_TEXT_SIZE * 2), 0x00FF00, FlxTextAlign.CENTER);
		professor1Role.setFormat(null, Std.int(NORMAL_TEXT_SIZE * 1.5), 0x00FF00, FlxTextAlign.CENTER);
		professor1Name.setFormat(null, Std.int(NORMAL_TEXT_SIZE * 1.5), 0xFFFFFF, FlxTextAlign.CENTER);
		professor2Role.setFormat(null, Std.int(NORMAL_TEXT_SIZE * 1.5), 0x00FF00, FlxTextAlign.CENTER);
		professor2Name.setFormat(null, Std.int(NORMAL_TEXT_SIZE * 1.5), 0xFFFFFF, FlxTextAlign.CENTER);
		professor3Role.setFormat(null, Std.int(NORMAL_TEXT_SIZE * 1.5), 0x00FF00, FlxTextAlign.CENTER);
		professor3Name.setFormat(null, Std.int(NORMAL_TEXT_SIZE * 1.5), 0xFFFFFF, FlxTextAlign.CENTER);
		
		imageCampusLogo.loadGraphic("assets/images/icLogo.png");
		devLogo.loadGraphic("assets/images/developerLogo.png");
		
		adjustScale(imageCampusLogo);
		adjustScale(devLogo);
		adjustScale(aboutTitle);
		adjustScale(aboutText);
		adjustScale(studentsTitle);
		adjustScale(student1Role);
		adjustScale(student1Name);
		adjustScale(student2Role);
		adjustScale(student2Name);
		adjustScale(student3Role);
		adjustScale(student3Name);
		adjustScale(professorsTitle);
		adjustScale(professor1Role);
		adjustScale(professor1Name);
		adjustScale(professor2Role);
		adjustScale(professor2Name);
		adjustScale(professor3Role);
		adjustScale(professor3Name);
		
		resetPositions();
		
		imageCampusLogo.velocity.y = TEXT_SPD;
		devLogo.velocity.y = TEXT_SPD;	
		
		everythingGroup.add(imageCampusLogo);
		everythingGroup.add(devLogo);
		everythingGroup.add(aboutTitle);
		everythingGroup.add(aboutText);
		everythingGroup.add(studentsTitle);
		everythingGroup.add(student1Role);
		everythingGroup.add(student1Name);
		everythingGroup.add(student2Role);
		everythingGroup.add(student2Name);
		everythingGroup.add(student3Role);
		everythingGroup.add(student3Name);
		everythingGroup.add(professorsTitle);
		everythingGroup.add(professor1Role);
		everythingGroup.add(professor1Name);
		everythingGroup.add(professor2Role);
		everythingGroup.add(professor2Name);
		everythingGroup.add(professor3Role);
		everythingGroup.add(professor3Name);
		everythingGroup.add(gameLogo);
		
		add(everythingGroup);
	}

	override public function update(elapsed:Float):Void
	{
		super.update(elapsed);
		
		moveTexts();
		
		/*
		if (needsLoop())
			resetPositions();
		*/
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
	
	private function moveTexts():Void
	{
		aboutTitle.y += TEXT_SPD * FlxG.elapsed;
		aboutText.y += TEXT_SPD * FlxG.elapsed;		
		studentsTitle.y += TEXT_SPD * FlxG.elapsed;
		student1Role.y += TEXT_SPD * FlxG.elapsed;
		student1Name.y += TEXT_SPD * FlxG.elapsed;
		student2Role.y += TEXT_SPD * FlxG.elapsed;
		student2Name.y += TEXT_SPD * FlxG.elapsed;
		student3Role.y += TEXT_SPD * FlxG.elapsed;
		student3Name.y += TEXT_SPD * FlxG.elapsed;
		professorsTitle.y += TEXT_SPD * FlxG.elapsed;
		professor1Role.y += TEXT_SPD * FlxG.elapsed;
		professor1Name.y += TEXT_SPD * FlxG.elapsed;
		professor2Role.y += TEXT_SPD * FlxG.elapsed;
		professor2Name.y += TEXT_SPD * FlxG.elapsed;
		professor3Role.y += TEXT_SPD * FlxG.elapsed;
		professor3Name.y += TEXT_SPD * FlxG.elapsed;
	}
	
	private function resetPositions():Void
	{		
		imageCampusLogo.setPosition((FlxG.width - imageCampusLogo.width) / 2, FlxG.height + NORMAL_TEXT_SIZE * 1.5);
		devLogo.setPosition((FlxG.width - devLogo.width) / 2, imageCampusLogo.y + imageCampusLogo.height + NORMAL_TEXT_SIZE * 6);
		aboutTitle.setPosition((FlxG.width - aboutTitle.width) / 2, devLogo.y + devLogo.height + NORMAL_TEXT_SIZE * 6);
		aboutText.setPosition((FlxG.width - aboutText.width) / 2, aboutTitle.y + aboutTitle.height + NORMAL_TEXT_SIZE * 2);
		studentsTitle.setPosition((FlxG.width - studentsTitle.width) / 2, aboutText.y + aboutText.height + NORMAL_TEXT_SIZE * 6);
		student1Role.setPosition((FlxG.width - student1Role.width) / 2, studentsTitle.y + studentsTitle.height + NORMAL_TEXT_SIZE * 4);
		student1Name.setPosition((FlxG.width - student1Name.width) / 2, student1Role.y + student1Role.height + NORMAL_TEXT_SIZE * 0.5);
		student2Role.setPosition((FlxG.width - student2Role.width) / 2, student1Name.y + student1Name.height + NORMAL_TEXT_SIZE * 1.5);
		student2Name.setPosition((FlxG.width - student2Name.width) / 2, student2Role.y + student2Role.height + NORMAL_TEXT_SIZE * 0.5);
		student3Role.setPosition((FlxG.width - student3Role.width) / 2, student2Name.y + student2Name.height + NORMAL_TEXT_SIZE * 1.5);
		student3Name.setPosition((FlxG.width - student3Name.width) / 2, student3Role.y + student3Role.height + NORMAL_TEXT_SIZE * 0.5);
		professorsTitle.setPosition((FlxG.width - professorsTitle.width) / 2, student3Name.y + student3Name.height + NORMAL_TEXT_SIZE * 6);
		professor1Role.setPosition((FlxG.width - professor1Role.width) / 2, professorsTitle.y + professorsTitle.height + NORMAL_TEXT_SIZE * 4);
		professor1Name.setPosition((FlxG.width - professor1Name.width) / 2, professor1Role.y + professor1Role.height + NORMAL_TEXT_SIZE * 0.5);
		professor2Role.setPosition((FlxG.width - professor2Role.width) / 2, professor1Name.y + professor1Name.height + NORMAL_TEXT_SIZE * 1.5);
		professor2Name.setPosition((FlxG.width - professor2Name.width) / 2, professor2Role.y + professor2Role.height + NORMAL_TEXT_SIZE * 0.5);
		professor3Role.setPosition((FlxG.width - professor3Role.width) / 2, professor2Name.y + professor2Name.height + NORMAL_TEXT_SIZE * 1.5);
		professor3Name.setPosition((FlxG.width - professor3Name.width) / 2, professor3Role.y + professor3Role.height + NORMAL_TEXT_SIZE * 0.5);
		gameLogo.setPosition((FlxG.width - gameLogo.width) / 2, professor3Name.y + professor3Name.height + NORMAL_TEXT_SIZE * 6);
	}
	
	private function needsLoop():Bool
	{
		for (i in 0...everythingGroup.members.length)
			if (everythingGroup.members[i].y + everythingGroup.members[i].height >= 0)
				return false;
		return true;
	}
}

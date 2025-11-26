package;

import suvindo.BlockList;
import flixel.FlxGame;
import openfl.display.Sprite;

class Main extends Sprite
{
	public function new()
	{
		super();

		BlockList.reload();

		addChild(new FlxGame(0, 0, PlayState));
	}
}

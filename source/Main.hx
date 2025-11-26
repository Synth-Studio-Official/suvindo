package;

import suvindo.ReloadPlugin;
import flixel.FlxG;
import suvindo.BlockList;
import flixel.FlxGame;
import openfl.display.Sprite;

class Main extends Sprite
{
	public function new()
	{
		super();

		FlxG.plugins.addPlugin(new ReloadPlugin());

		ReloadPlugin.reload_function();
		
		addChild(new FlxGame(0, 0, PlayState));
	}
}

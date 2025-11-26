package suvindo;

import flixel.util.FlxSignal;
import flixel.FlxG;
import flixel.FlxBasic;

class ReloadPlugin extends FlxBasic
{
	public static var reload:FlxSignal;

	override public function new()
	{
		super();

		reload = new FlxSignal();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (FlxG.keys.justReleased.R)
		{
			reload_function();
		}
	}

	public static function reload_function()
	{
		ResourcePacks.reload();
		BlockList.reload();

        reload.dispatch();
	}
}

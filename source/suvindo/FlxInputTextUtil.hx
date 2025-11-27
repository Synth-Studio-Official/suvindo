package suvindo;

import flixel.FlxG;
import flixel.text.FlxInputText;

class FlxInputTextUtil
{
	public static final FLX_INPUT_TEXT_DEFAULT_MARGIN = 5.0;
	public static final FLX_INPUT_TEXT_DEFAULT_GAP = 5.0;

	/**
	 * https://github.com/HaxeFlixel/flixel-demos/blob/dev/UserInterface/FlxInputText/source/PlayState.hx
	 */
	public static function createInputText(?fieldWidth:Float, text = "", size = 16):FlxInputText
	{
		var textX = FLX_INPUT_TEXT_DEFAULT_MARGIN;
		var textY = FLX_INPUT_TEXT_DEFAULT_MARGIN;

		if (fieldWidth == null)
			fieldWidth = FlxG.width - 5 - textX;

		final field = new FlxInputText(textX, textY, fieldWidth, text, size);
		return field;
	}
}

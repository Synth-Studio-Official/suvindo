package suvindo;

#if sys
import sys.FileSystem;
#end

class ResourcePacks
{
	public static var RESOURCE_PACKS:Array<String> = [];

	public static function reload()
	{
		RESOURCE_PACKS = [];

		#if sys
		for (pack in FileSystem.readDirectory('resources/'))
		{
			if (FileSystem.isDirectory('resources/' + pack))
				RESOURCE_PACKS.push(pack);
		}
		#end

		trace('Resource packs: ' + RESOURCE_PACKS);
	}

	public static function getPath(path:String):String
	{
		#if sys
		for (pack in RESOURCE_PACKS)
		{
			if (FileSystem.exists('resources/' + pack + '/' + path))
				return 'resources/' + pack + '/' + path;
		}
		#end

		return 'assets/' + path;
	}

	public static function readDirectory(directory:String):Array<String>
	{
		var read_directory:Array<String> = [];

		#if sys
		for (path in FileSystem.readDirectory('assets/' + directory))
			read_directory.push('assets/' + path);
		for (pack in RESOURCE_PACKS)
			for (path in FileSystem.readDirectory('resources/' + pack + '/' + directory))
				read_directory.push('resources/' + pack + '/' + path);
		#end

		return read_directory;
	}
}

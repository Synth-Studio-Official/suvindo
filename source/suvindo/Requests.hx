package suvindo;

import sys.io.File;
import haxe.Json;

typedef Request =
{
	request:String,
	?blocks:Array<String>
}

class RequestsManager
{
	public static var REMOVE:
		{
			?blocks:Array<String>
		};

	public static function reload()
	{
		REMOVE = {};

		#if sys
		for (request in ResourcePacks.readDirectory('data/requests/'))
		{
			var parsed_request:Request = null;
			try
			{
				parsed_request = Json.parse(File.getContent(request));
			}
			catch (e)
			{
				trace(e);
				parsed_request = null;
			}

			if (parsed_request == null)
				continue;

			switch (parsed_request.request)
			{
				case 'remove':
					for (block_id in parsed_request?.blocks)
						REMOVE.blocks.push(block_id);
			}
		}
		#end

		trace('REMOVE REQUESTS: ' + REMOVE);
	}
}

package suvindo;

typedef BlockJSON =
{
	var ?variations:Array<BlockVariation>;
	var ?animated:AnimatedEntry;

	var ?type:String;
}

typedef BlockTexture =
{
	texture:String
}

typedef BlockVariation =
{
	> BlockTexture,

	id:String,
}

typedef AnimatedEntry =
{
	> BlockTexture,

	block_width:Int,
	block_height:Int,

	?frames:Array<Int>,
	?fps:Int
}

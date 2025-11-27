package suvindo;

typedef BlockJSON =
{
	var ?variations:Array<BlockVariation>;
	var ?animated:AnimatedEntry;
	var ?regular:RegularEntry;

	var ?type:String;
}

typedef RegularEntry =
{
	?texture:String
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

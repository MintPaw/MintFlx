package mintFlx;

import flixel.*;
import flixel.graphics.frames.*;

class MintFlx {
	public function new() { }

	public static function getDefaultAnim(animLoc:String, playing:Bool=false, loops:Bool=false):FlxSprite {
		var s:FlxSprite = new FlxSprite();
		setupAnim(s, animLoc, true, playing, loops);
		return s;
	}

	public static function setupAnim(sprite:FlxSprite, animLoc:String, makeDefaultAnim:Bool=false, playing=false, loops:Bool=false):Void {
		sprite.frames = FlxAtlasFrames.fromTexturePackerJson('$animLoc.png', '$animLoc.json');

		if (makeDefaultAnim)
			sprite.animation.addByPrefix("default", animLoc.substr(animLoc.lastIndexOf("/")+1, animLoc.length), 60, loops);

		if (playing) sprite.animation.play("default");
	}
}
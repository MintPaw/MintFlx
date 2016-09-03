package mintFlx;

class FlxMintDebugger {
	public static function init():Void {
		big();
		hideExtra();
	}

	public static function showExtra():Void {
		FlxG.game.debugger.stats.visible = true;
		// FlxG.game.debugger.interaction.visible = true;
	}
	public static function hideExtra():Void {
		FlxG.game.debugger.stats.visible = false;
		// FlxG.game.debugger.interaction.visible = false;
	}
	
	public static function refresh():Void {
		for (f in Reflect.fields(GameState.data))
			FlxG.watch.add(GameState.data, f, 'data.$f');

		FlxG.debugger.resetLayout();
	}

	public static function big():Void { changeLayout(FlxDebuggerLayout.BIG); }
	public static function standard():Void { changeLayout(FlxDebuggerLayout.STANDARD); }
	public static function micro():Void { changeLayout(FlxDebuggerLayout.MICRO); }
	public static function top():Void { changeLayout(FlxDebuggerLayout.TOP); }
	public static function left():Void { changeLayout(FlxDebuggerLayout.LEFT); }
	public static function right():Void { changeLayout(FlxDebuggerLayout.RIGHT); }
	public static function changeLayout(layout:FlxDebuggerLayout):Void { FlxG.debugger.setLayout(layout); }
}
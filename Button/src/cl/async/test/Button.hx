package cl.async.test;

import nme.display.Sprite;
import nme.events.Event;
import nme.events.MouseEvent;
import nme.Lib;

/**
 * @author dean
 */

class Button extends Sprite 
{
	
	public var buttonColor:Int = 0xFF9900;
	public var buttonOverColor:Int = 0xFFFF00;
	public var buttonDownColor:Int = 0x00FF00;

	
	public function new() 
	{
		super();
		init();
		createButton();
	}

	private function createButton():Void
	{
		this.graphics.beginFill(buttonColor, 1);
		this.graphics.lineStyle(2, 0xFF0000, 1);
		this.graphics.drawRoundRect(0, 0, 100, 40, 20, 20);
	}
	private function init():Void
	{
		this.addEventListener(MouseEvent.CLICK, onClick);
		this.addEventListener(MouseEvent.MOUSE_MOVE, onMouseMove);
		this.addEventListener(MouseEvent.MOUSE_OUT, onMouseOut);
		this.addEventListener(MouseEvent.MOUSE_OVER, onMouseOver);
		this.addEventListener(MouseEvent.MOUSE_DOWN, onMouseDown);
		this.addEventListener(MouseEvent.MOUSE_UP, onMouseUp);
	}

	private function setColor(color:Int)
	{
		this.graphics.beginFill(color, 1);
		this.graphics.drawRoundRect(0, 0, 100, 40, 20, 20);
	}
	
	
	// event handlers
	
	private function onClick(event:MouseEvent):Void
	{
		trace("onClick");		
	}
	
	private function onMouseDown(event:MouseEvent):Void
	{
		setColor(buttonDownColor);
		trace("onMouseDown");
	}

	private function onMouseUp(event:MouseEvent):Void
	{
		setColor(buttonOverColor);
		trace("onMouseUp");
	}

	private function onMouseMove(event:MouseEvent):Void
	{
		var coords:String = "(" + this.mouseX + "," + this.mouseY + ")";
		trace(coords);
	}
	
	private function onMouseOut(event:MouseEvent):Void
	{
		setColor(buttonColor);
		trace("onMouseOut");
	}

	private function onMouseOver(event:MouseEvent):Void
	{
		setColor(buttonOverColor);
		trace("onMouseOver");
	}
	
	
	// entry point
	
	static public function main() 
	{
		Lib.current.addChild (new Button ());
	}

	
}

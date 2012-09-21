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

	
	public function new() 
	{
		super();
		
		construct();
	}

	private function construct ():Void 
	{
		createButton();
	}

	private function createButton() 
	{
		this.graphics.beginFill(buttonColor, 1);
		this.graphics.lineStyle(2, 0xFF0000, 1);
		this.graphics.drawRoundRect(0, 0, 100, 40, 20, 20);
		this.addEventListener(MouseEvent.CLICK, onClick);
		this.addEventListener(MouseEvent.MOUSE_MOVE, onMouseMove);
		this.addEventListener(MouseEvent.MOUSE_OUT, onMouseOut);
		this.addEventListener(MouseEvent.MOUSE_OVER, onMouseOver);
	}

	private function setButtonColor(newColor:Int)
	{
		buttonColor = newColor;
		this.graphics.beginFill(newColor, 1);
		this.graphics.drawRoundRect(0, 0, 100, 40, 20, 20);
	}
	
	
	// event handlers
	
	private function onClick(event:MouseEvent):Void
	{
		trace("btn_Click");		
	}
	
	private function onMouseMove(event:MouseEvent):Void
	{
		var coords:String = "(" + this.mouseX + "," + this.mouseY + ")";
		trace(coords);
	}
	
	private function onMouseOut(event:MouseEvent):Void
	{
		setButtonColor(0xFF9900);
		trace("btn_MouseOut");
	}

	private function onMouseOver(event:MouseEvent):Void
	{
		setButtonColor(0xFFFF00);
		trace("btn_MouseOver");
	}
	
	
	// entry point
	
	static public function main() 
	{
		Lib.current.addChild (new Button ());
	}

	
}

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
		var btn:Sprite = new Sprite();
		btn.graphics.beginFill(buttonColor, 0.5);
		btn.graphics.lineStyle(2, 0xFF0000, 1);
		btn.graphics.drawRoundRect(0, 0, 100, 40, 20, 20);
		btn.addEventListener(MouseEvent.CLICK, btn_Click);
		btn.addEventListener(MouseEvent.MOUSE_MOVE, btn_MouseMove);
		btn.addEventListener(MouseEvent.MOUSE_OUT, btn_MouseOut);
		btn.addEventListener(MouseEvent.MOUSE_OVER, btn_MouseOver);
		addChild(btn);
	}

	private function setButtonColor(newColor:Int)
	{
		buttonColor = newColor;
		this.graphics.beginFill(newColor);
		this.graphics.drawRoundRect(0, 0, 100, 40, 20, 20);
	}
	
	
	// event handlers
	
	private function btn_Click(event:MouseEvent):Void
	{
		trace("btn_Click");		
	}
	
	private function btn_MouseMove(event:MouseEvent):Void
	{
		var coords:String = "(" + this.mouseX + "," + this.mouseY + ")";
		trace(coords);
	}
	
	private function btn_MouseOut(event:MouseEvent):Void
	{
		setButtonColor(0xFF9900);
		trace("btn_MouseOut");
	}

	private function btn_MouseOver(event:MouseEvent):Void
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

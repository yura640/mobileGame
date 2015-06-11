package
{
	import flash.display.Sprite;
	import flash.display.StageAlign;
	import flash.display.StageScaleMode;
	import flash.events.Event;
	
	public class myMobileGame extends Sprite
	{
		public function myMobileGame()
		{
			super();
			stage.align = StageAlign.TOP_LEFT;
			stage.scaleMode = StageScaleMode.NO_SCALE;
			addEventListener(Event.ADDED_TO_STAGE, onAdded);
		}
		
		protected function onAdded(event:Event):void
		{
			removeEventListener(Event.ADDED_TO_STAGE, onAdded);
			pureMVCTest.getInstance().startApp(this);
		}
	}
}
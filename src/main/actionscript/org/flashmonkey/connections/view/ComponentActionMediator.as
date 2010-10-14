package org.flashmonkey.connections.view
{
	import flash.display.DisplayObject;
	import flash.events.IEventDispatcher;
	import flash.events.MouseEvent;
	
	import org.flashmonkey.connections.events.ConnectionEvent;
	
	import spark.components.List;

	public class ComponentActionMediator
	{		
		protected var _stage:DisplayObject;
		
		protected var _dragTarget:DisplayObject;
		
		protected var _dropTarget:DisplayObject;
		
		protected var _eventDispatcher:IEventDispatcher;
		
		protected var _list:List;
		
		public function ComponentActionMediator()
		{
		}
		
		public function handleActionEvents(stage:DisplayObject, dragTarget:DisplayObject, dropTarget:DisplayObject, eventDispatcher:IEventDispatcher, list:List):void 
		{
			_stage = stage;
			_dragTarget = dragTarget;
			_dropTarget = dropTarget;
			_eventDispatcher = eventDispatcher;
			
			_dropTarget.addEventListener(MouseEvent.MOUSE_OVER, onMouseOver);
			_dropTarget.addEventListener(MouseEvent.MOUSE_OUT, onMouseOut);
			_dropTarget.addEventListener(MouseEvent.MOUSE_UP, mouseUpHandler);
			
			if (_dragTarget)
			{
				_dragTarget.addEventListener(MouseEvent.MOUSE_DOWN, mouseDownHandler);
			}
			
			_list = list;
		}
		
		private function onMouseOver(e:MouseEvent):void 
		{
			handleMouseOver();
			
			/*if (ConnectionsManager.instance.connecting &&
				ConnectionsManager.instance.dropSupported)
			{
				handleDropSupported();			
			}*/
		}
		
		private function onMouseOut(e:MouseEvent):void
		{
			
		}
		
		protected function handleMouseOver():void 
		{
			
		}
		
		protected function handleDropSupported():void 
		{
			
		}
		
		private function mouseUpHandler(event:MouseEvent):void
		{								
			/*if (ConnectionsManager.instance.connecting)
			{
				handleDrop();
			}*/
		}
		
		protected function handleDrop():void 
		{
			
		}
		
		private function mouseDownHandler(event:MouseEvent):void
		{				
			handleMouseDown();
			
			_stage.addEventListener(MouseEvent.MOUSE_UP, stageMouseUpHandler);
		}
		
		protected function handleMouseDown():void 
		{
			
		}
		
		private function stageMouseUpHandler(event:MouseEvent):void
		{
			_stage.removeEventListener(MouseEvent.MOUSE_UP, stageMouseUpHandler);
			
			_eventDispatcher.dispatchEvent(new ConnectionEvent(ConnectionEvent.STOP_DRAWING_CONNECTION));
		}
	}
}
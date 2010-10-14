package org.flashmonkey.connections.view
{
	import org.flashmonkey.connections.api.IConnectionTarget;
	import org.flashmonkey.connections.events.ConnectionEvent;

	public class TargetActionMediator extends ComponentActionMediator
	{
		private var _target:IConnectionTarget;
		
		public function TargetActionMediator(target:IConnectionTarget)
		{
			super();
			
			_target = target;
		}
		
		protected override function handleMouseOver():void
		{			
			_eventDispatcher.dispatchEvent(new ConnectionEvent(ConnectionEvent.SET_CONNECTION_TARGET, null, null, _target));
		}
		
		protected override function handleDropSupported():void
		{
			_list.selectedItem = _target.value;
		}
		
		protected override function handleMouseDown():void
		{
			_eventDispatcher.dispatchEvent(new ConnectionEvent(ConnectionEvent.START_DRAWING_CONNECTION, null, null, null, _target));
			_eventDispatcher.dispatchEvent(new ConnectionEvent(ConnectionEvent.SET_CONNECTION_TARGET, null, null, _target));
		}
		
		protected override function handleDrop():void
		{
			_eventDispatcher.dispatchEvent(new ConnectionEvent(ConnectionEvent.CREATE_CONNECTION));
		}
	}
}
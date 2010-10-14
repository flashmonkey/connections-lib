package org.flashmonkey.connections.view
{
	import org.flashmonkey.collaboration.api.IComponentDescriptor;
	import org.flashmonkey.connections.api.IConnectionSource;
	import org.flashmonkey.connections.events.ConnectionEvent;

	public class SourceActionMediator extends ComponentActionMediator
	{		
		private var _component:IComponentDescriptor;
		
		private var _source:IConnectionSource;
		
		public function SourceActionMediator(component:IComponentDescriptor, source:IConnectionSource)
		{
			super();
			
			_component = component;
			_source = source;
		}
		
		protected override function handleMouseOver():void
		{
			_eventDispatcher.dispatchEvent(new ConnectionEvent(ConnectionEvent.SET_CONNECTION_SOURCE, null, _source));
		}
		
		protected override function handleDrop():void 
		{
			_eventDispatcher.dispatchEvent(new ConnectionEvent(ConnectionEvent.CREATE_CONNECTION, _component));
		}
		
		protected override function handleMouseDown():void 
		{
			_eventDispatcher.dispatchEvent(new ConnectionEvent(ConnectionEvent.START_DRAWING_CONNECTION, null, null, null, _source));
			_eventDispatcher.dispatchEvent(new ConnectionEvent(ConnectionEvent.SET_CONNECTION_SOURCE, _component, _source));
		}
	}
}
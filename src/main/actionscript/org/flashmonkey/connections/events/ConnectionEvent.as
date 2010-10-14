package org.flashmonkey.connections.events
{
	import flash.events.Event;
	
	import org.flashmonkey.collaboration.api.IComponentDescriptor;
	import org.flashmonkey.connections.api.IConnectionNode;
	import org.flashmonkey.connections.api.IConnectionSource;
	import org.flashmonkey.connections.api.IConnectionTarget;
	
	public class ConnectionEvent extends Event
	{
		public static const SET_CONNECTION_SOURCE:String = "SetConnectionSource";
		public static const SET_CONNECTION_TARGET:String = "SetConnectionTarget";
		public static const START_DRAWING_CONNECTION:String = "StartDrawingConnection";
		public static const STOP_DRAWING_CONNECTION:String = "StopDrawingConnection";
		public static const CREATE_CONNECTION:String = "CreateConnection";
		
		private var _component:IComponentDescriptor;
		
		public function get component():IComponentDescriptor
		{
			return _component;
		}
		
		private var _connectionSource:IConnectionSource;
		
		public function get connectionSource():IConnectionSource
		{
			return _connectionSource;
		}
		
		private var _connectionTarget:IConnectionTarget;
		
		public function get connectionTarget():IConnectionTarget
		{
			return _connectionTarget;
		}
		
		private var _dragOrigin:IConnectionNode;
		
		public function get dragOrigin():IConnectionNode
		{
			return _dragOrigin;
		}
		
		public function ConnectionEvent(type:String, 
										component:IComponentDescriptor = null, 
										connectionSource:IConnectionSource = null, 
										connectionTarget:IConnectionTarget = null, 
										dragOrigin:IConnectionNode = null, 
										bubbles:Boolean=false, 
										cancelable:Boolean=false)
		{
			super(type, bubbles, cancelable);
			
			_component = component;
			_connectionSource = connectionSource;
			_connectionTarget = connectionTarget;
			_dragOrigin = dragOrigin;
		}
		
		public override function clone():Event
		{
			return new ConnectionEvent(type, component, connectionSource, connectionTarget, dragOrigin);
		}
		
		public override function toString():String
		{
			return "[ConnectionEvent(from:" + connectionSource + ", to:" + connectionTarget + ", on:" + component + ")]";
		}
	}
}
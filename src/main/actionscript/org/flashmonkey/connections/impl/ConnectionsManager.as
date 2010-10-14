package org.flashmonkey.connections.impl
{
	import org.flashmonkey.collaboration.api.IComponentDescriptor;
	import org.flashmonkey.connections.api.IConnectionNode;
	import org.flashmonkey.connections.api.IConnectionSource;
	import org.flashmonkey.connections.api.IConnectionTarget;
	import org.flashmonkey.connections.api.IConnectionsManager;

	public class ConnectionsManager implements IConnectionsManager
	{		
		private static var _instance:ConnectionsManager;
		
		public static function get instance():ConnectionsManager
		{
			return _instance;
		}
		
		private var _component:IComponentDescriptor;
		
		[Bindable] public function get component():IComponentDescriptor
		{
			return _component;
		}
		public function set component(value:IComponentDescriptor):void
		{
			_component = value;
		}
		
		private var _source:IConnectionSource;
		
		[Bindable] public function get source():IConnectionSource
		{
			return _source;
		}
		public function set source(value:IConnectionSource):void
		{
			_source = value;
		}
		
		private var _target:IConnectionTarget;	
		
		[Bindable] public function get target():IConnectionTarget
		{
			return _target;
		}
		public function set target(value:IConnectionTarget):void
		{
			_target = value;
		}
		
		private var _dragOrigin:IConnectionNode;
		
		public function get dragOrigin():IConnectionNode
		{
			return _dragOrigin;
		}
		public function set dragOrigin(value:IConnectionNode):void
		{
			_dragOrigin = value;	
		}
		
		private var _connecting:Boolean;
		
		[Bindable] public function get connecting():Boolean
		{
			return _connecting;
		}
		public function set connecting(value:Boolean):void
		{
			_connecting = value;
		}
		
		public function get dropSupported():Boolean
		{
			if (_source && _target)
			{				
				for each (var property:String in _target.supportedProperties)
				{
					if (property == _source.property)
					{
						return true;
					}
				}
				
				return false;
			}
			else
			{
				return false;
			}
		}
		
		public function ConnectionsManager()
		{
			_instance = this;
		}		
	}
}
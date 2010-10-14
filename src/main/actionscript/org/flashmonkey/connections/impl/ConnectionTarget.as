package org.flashmonkey.connections.impl
{
	import flash.display.DisplayObject;
	
	import org.flashmonkey.collaboration.api.IComponentDescriptor;
	import org.flashmonkey.connections.api.IConnectionSource;
	import org.flashmonkey.connections.api.IConnectionTarget;

	public class ConnectionTarget extends ConnectionNode implements IConnectionTarget
	{
		private var _value:*;
		
		public function get value():*
		{
			return _value;
		}
		
		protected var _supportedProperties:Array = [];
		
		public function get supportedProperties():Array
		{
			return _supportedProperties;
		}
		
		public function ConnectionTarget(displayObject:DisplayObject, value:*, supportedProperties:Array = null)
		{
			super(displayObject);
			
			_value = value;
			
			if (supportedProperties)
			{
				_supportedProperties = supportedProperties;
			}
		}
		
		public function applySourceToComponent(source:IConnectionSource, component:IComponentDescriptor):void
		{
			
		}
	}
}
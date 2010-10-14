package org.flashmonkey.connections.impl
{
	import flash.display.DisplayObject;
	
	import org.flashmonkey.connections.api.IConnectionSource;
	
	public class ConnectionSource extends ConnectionNode implements IConnectionSource
	{
		private var _property:String;
		
		public function get property():String
		{
			return _property;
		}
		
		public function ConnectionSource(displayObject:DisplayObject, property:String)
		{
			super(displayObject);
			
			_property = property;
		}
	}
}
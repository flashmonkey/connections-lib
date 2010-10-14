package org.flashmonkey.connections.impl
{
	import flash.display.DisplayObject;
	
	import org.flashmonkey.connections.api.IConnectionNode;
	
	public class ConnectionNode implements IConnectionNode
	{
		private var _displayObject:DisplayObject;
		
		public function get displayObject():DisplayObject
		{
			return _displayObject;
		}
		
		public function ConnectionNode(displayObject:DisplayObject)
		{
			_displayObject = displayObject;
		}
	}
}
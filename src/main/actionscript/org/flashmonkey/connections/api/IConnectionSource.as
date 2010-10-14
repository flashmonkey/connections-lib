package org.flashmonkey.connections.api
{
	import flash.display.DisplayObject;

	public interface IConnectionSource extends IConnectionNode
	{		
		function get property():String;
	}
}
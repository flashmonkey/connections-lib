package org.flashmonkey.connections.api
{
	import org.flashmonkey.collaboration.api.IComponentDescriptor;		

	public interface IConnectionTarget extends IConnectionNode
	{
		function get value():*;
		
		function get supportedProperties():Array;
		
		function applySourceToComponent(source:IConnectionSource, component:IComponentDescriptor):void;
	}
}
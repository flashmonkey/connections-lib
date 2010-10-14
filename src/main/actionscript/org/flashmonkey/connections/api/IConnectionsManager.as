package org.flashmonkey.connections.api
{
	import org.flashmonkey.collaboration.api.IComponentDescriptor;	
	
	public interface IConnectionsManager
	{
		function get component():IComponentDescriptor;
		function set component(value:IComponentDescriptor):void;
		
		function get source():IConnectionSource;
		function set source(value:IConnectionSource):void;
		
		function get target():IConnectionTarget;
		function set target(value:IConnectionTarget):void;
		
		function get dragOrigin():IConnectionNode;
		function set dragOrigin(value:IConnectionNode):void;
		
		function get connecting():Boolean;
		function set connecting(value:Boolean):void;
		
		function get dropSupported():Boolean;
	}
}
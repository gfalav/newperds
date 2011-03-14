package vo
{
	public class Zona
	{
		public var id:Number;
		public var zona:String;
		public var distribuidora_id:Number;
		
		public function Zona(id:Number,zona:String, distribuidora_id:Number)
		{
			this.id = id;
			this.zona = zona;
			this.distribuidora_id = distribuidora_id;
		}

	}
}
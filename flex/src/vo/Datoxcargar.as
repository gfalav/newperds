package vo
{
	public class Datoxcargar
	{
		public var zona_id:Number;
		public var zona:String;
		public var mem:Number;
		public var ter:Number;
		public var gen:Number;
		public var dis:Number;
		public var gma:Number;
		public var gme:Number;
		public var pro:Number;
		public var rec:Number;
		
		public function Datoxcargar(zona_id:Number,
									zona:String,
									mem:Number,
									ter:Number,
									gen:Number,
									dis:Number,
									gma:Number,
									gme:Number,
									pro:Number,
									rec:Number)
		{
			this.zona_id = zona_id;
			this.zona = zona;
			this.mem = mem;
			this.ter = ter;
			this.gen = gen;
			this.dis = dis;
			this.gma = gma;
			this.gme = gme;
			this.pro = pro;
			this.rec = rec;
		}

	}
}
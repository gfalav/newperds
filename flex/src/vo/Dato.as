package vo
{
	public class Dato
	{
		public var distribuidora_id:Number;
		public var zona_id:Number;
		public var periodo:Number;
		public var mem:Number;
		public var ter:Number;
		public var gen:Number;
		public var toting:Number;
		public var dis:Number;
		public var gma:Number;
		public var gme:Number;
		public var rec:Number;
		public var pro:Number;
		public var totegr:Number;
		public var totingan:Number;
		public var totegran:Number;
		public var perd:Number;
		public var perdan:Number;
		public var perdx100:Number;
		public var perdx100an:Number;
		
		public function Dato(distribuidora_id:Number,
							 zona_id:Number,
							 periodo:Number,
							 mem:Number,
							 ter:Number,
							 gen:Number,
							 toting:Number,
							 dis:Number,
							 gma:Number,
							 gme:Number,
							 rec:Number,
							 pro:Number,
							 totegr:Number,
							 totingan:Number,
							 totegran:Number,
							 perd:Number,
							 perdan:Number,
							 perdx100:Number,
							 perdx100an:Number)
		{
		this.distribuidora_id=distribuidora_id;
		this.zona_id = zona_id;
		this.periodo=periodo;
		this.mem=mem;
		this.ter=ter;
		this.gen=gen;
		this.toting=toting;
		this.dis=dis;
		this.gma=gma;
		this.gme=gme;
		this.rec=rec;
		this.pro=pro;
		this.totegr=totegr;
		this.totingan=totingan;
		this.totegran=totegran;
		this.perd=perd;
		this.perdan=perdan;	
		this.perdx100 = perdx100;
		this.perdx100an = perdx100an;		
		}

	}
}
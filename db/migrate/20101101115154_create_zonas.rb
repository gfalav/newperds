class CreateZonas < ActiveRecord::Migration
  def self.up
    create_table :zonas do |t|
      t.string :zona
			t.integer :distribuidora_id

      t.timestamps
    end

Zona.create(:distribuidora_id=>2,:zona=>'Prov La Rioja')
Zona.create(:distribuidora_id=>2,:zona=>'Capital')
Zona.create(:distribuidora_id=>2,:zona=>'Chilecito')
Zona.create(:distribuidora_id=>2,:zona=>'Aimogasta')
Zona.create(:distribuidora_id=>2,:zona=>'Sur')
Zona.create(:distribuidora_id=>2,:zona=>'Villa Union')
Zona.create(:distribuidora_id=>2,:zona=>'132kV Ingreso')
Zona.create(:distribuidora_id=>2,:zona=>'132kV Egreso')
Zona.create(:distribuidora_id=>1,:zona=>'Prov San Luis')
Zona.create(:distribuidora_id=>1,:zona=>'Capital')
Zona.create(:distribuidora_id=>1,:zona=>'Villa Mercedes')
Zona.create(:distribuidora_id=>1,:zona=>'La Toma')
Zona.create(:distribuidora_id=>1,:zona=>'Quines')
Zona.create(:distribuidora_id=>1,:zona=>'Merlo')
Zona.create(:distribuidora_id=>1,:zona=>'Fortuna')
Zona.create(:distribuidora_id=>1,:zona=>'132kV Ingreso')
Zona.create(:distribuidora_id=>1,:zona=>'132kV Egreso')
Zona.create(:distribuidora_id=>3,:zona=>'Prov Salta')
Zona.create(:distribuidora_id=>3,:zona=>'Cafayate')
Zona.create(:distribuidora_id=>3,:zona=>'Capital')
Zona.create(:distribuidora_id=>3,:zona=>'Guemes')
Zona.create(:distribuidora_id=>3,:zona=>'J V Gonzalez')
Zona.create(:distribuidora_id=>3,:zona=>'La Candelaria')
Zona.create(:distribuidora_id=>3,:zona=>'Metan')
Zona.create(:distribuidora_id=>3,:zona=>'Oran')
Zona.create(:distribuidora_id=>3,:zona=>'S A Cobres')
Zona.create(:distribuidora_id=>3,:zona=>'S Aislados')
Zona.create(:distribuidora_id=>3,:zona=>'Tartagal')
Zona.create(:distribuidora_id=>3,:zona=>'Valle de Lerma')
Zona.create(:distribuidora_id=>3,:zona=>'132kV Ingreso')
Zona.create(:distribuidora_id=>3,:zona=>'132kV Egreso')
		
  end

  def self.down
    drop_table :zonas
  end
end

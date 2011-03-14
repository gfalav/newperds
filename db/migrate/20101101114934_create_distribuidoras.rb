class CreateDistribuidoras < ActiveRecord::Migration
  def self.up
    create_table :distribuidoras do |t|
      t.string :distribuidora

      t.timestamps
    end

Distribuidora.create(:distribuidora=>'Edesal')
Distribuidora.create(:distribuidora=>'Edelar')
Distribuidora.create(:distribuidora=>'Edesa')
		
  end

  def self.down
    drop_table :distribuidoras
  end
end

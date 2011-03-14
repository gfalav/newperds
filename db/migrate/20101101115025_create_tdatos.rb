class CreateTdatos < ActiveRecord::Migration
  def self.up
    create_table :tdatos do |t|
      t.string :tipo

      t.timestamps
    end

Tdato.create(:tipo=>'MEM')
Tdato.create(:tipo=>'Terceros')
Tdato.create(:tipo=>'Generacion')
Tdato.create(:tipo=>'Distribuidora')
Tdato.create(:tipo=>'Guma')
Tdato.create(:tipo=>'Gume')
Tdato.create(:tipo=>'Cons Propios')
Tdato.create(:tipo=>'Recuperos')
		
  end

  def self.down
    drop_table :tdatos
  end
end

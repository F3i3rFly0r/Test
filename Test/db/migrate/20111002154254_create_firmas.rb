class CreateFirmas < ActiveRecord::Migration
  def self.up
    create_table :firmas do |t|
      t.string  :name
    end
    Firma.create  :name => "VW"
    Firma.create  :name => "Audi"
    Firma.create  :name => "Skoda"
    
  end
  def self.down
    drop_able :firmas
  end
end

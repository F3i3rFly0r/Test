class CreateMitarbeiters < ActiveRecord::Migration
  def self.up
    create_table :mitarbeiters do |t|
      t.string      :nachname,  :limit => 32, :null => false
      t.string      :vorname,  :limit => 32, :null => false
      t.integer     :firma_id
      t.timestamps  :created_at
    end
  end
  def self.down
    drop_table :mitarbeiters
  end

end

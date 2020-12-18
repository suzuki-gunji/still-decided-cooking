class CreateDecides < ActiveRecord::Migration[6.0]
  def change
    create_table :decides do |t|
      t.integer :genre_id,    null:false
      t.references :cook,     foreign_key: true
      t.timestamps
    end
  end
end

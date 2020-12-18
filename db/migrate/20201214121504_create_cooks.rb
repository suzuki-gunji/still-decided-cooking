class CreateCooks < ActiveRecord::Migration[6.0]
  def change
    create_table :cooks do |t|

      t.string :name,         null: false
      t.string :recipe,       null: false
      t.integer :genre_id,    null:false
      t.timestamps
    end
  end
end

class CreateGarments < ActiveRecord::Migration[6.1]
  def change
    create_table :garments do |t|
      t.string :color
      t.text :description
      t.references :brand, null: false, foreign_key: true
      t.references :garment_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end

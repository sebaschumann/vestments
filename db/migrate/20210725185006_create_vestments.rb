class CreateVestments < ActiveRecord::Migration[6.1]
  def change
    create_table :vestments do |t|
      t.references :emmision, null: false, foreign_key: true
      t.references :host, null: false, foreign_key: true
      t.references :garment, null: false, foreign_key: true

      t.timestamps
    end
  end
end

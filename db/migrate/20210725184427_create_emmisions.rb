class CreateEmmisions < ActiveRecord::Migration[6.1]
  def change
    create_table :emmisions do |t|
      t.integer :number
      t.datetime :date

      t.timestamps
    end
  end
end

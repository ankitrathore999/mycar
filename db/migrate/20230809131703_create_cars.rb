class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :number
      t.string :name
      t.string :model
      t.string :company
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

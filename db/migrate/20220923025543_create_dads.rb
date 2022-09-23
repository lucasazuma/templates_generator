class CreateDads < ActiveRecord::Migration[6.1]
  def change
    create_table :dads do |t|
      t.string :name
      t.integer :number

      t.timestamps
    end
  end
end

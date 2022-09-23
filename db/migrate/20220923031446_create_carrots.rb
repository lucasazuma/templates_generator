class CreateCarrots < ActiveRecord::Migration[6.1]
  def change
    create_table :carrots do |t|
      t.string :name
      t.integer :number

      t.timestamps
    end
  end
end

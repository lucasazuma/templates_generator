class CreateBags < ActiveRecord::Migration[6.1]
  def change
    create_table :bags do |t|
      t.string :name
      t.integer :number

      t.timestamps
    end
  end
end

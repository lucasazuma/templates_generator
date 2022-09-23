class CreateBalls < ActiveRecord::Migration[6.1]
  def change
    create_table :balls do |t|
      t.string :name
      t.integer :number

      t.timestamps
    end
  end
end

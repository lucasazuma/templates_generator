class CreateRoads < ActiveRecord::Migration[6.1]
  def change
    create_table :roads do |t|
      t.string :[]

      t.timestamps
    end
  end
end

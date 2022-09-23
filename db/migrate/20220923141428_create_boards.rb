class CreateBoards < ActiveRecord::Migration[6.1]
  def change
    create_table :boards do |t|
      t.string :name
      t.integer :number
      t.references :dad, null: false, foreign_key: true

      t.timestamps
    end
  end
end

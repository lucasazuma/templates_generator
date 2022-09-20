class CreateGas < ActiveRecord::Migration[6.1]
  def change
    create_table :gas do |t|
      t.string :[]

      t.timestamps
    end
  end
end

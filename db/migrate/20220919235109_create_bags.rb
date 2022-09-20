class CreateBags < ActiveRecord::Migration[6.1]
  def change
    create_table :bags do |t|
      t.string :[]

      t.timestamps
    end
  end
end

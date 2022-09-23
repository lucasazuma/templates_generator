class CreateBikes < ActiveRecord::Migration[6.1]
  def change
    create_table :bikes do |t|
      t.string :title
      t.integer :number

      t.timestamps
    end
  end
end

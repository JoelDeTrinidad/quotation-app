class CreateQuotes < ActiveRecord::Migration[6.0]
  def change
    create_table :quotes do |t|
      t.date :date
      t.numeric :price
      t.numeric :variation
      t.string :refernce

      t.timestamps
    end
  end
end

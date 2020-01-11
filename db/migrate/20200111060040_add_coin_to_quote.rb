class AddCoinToQuote < ActiveRecord::Migration[6.0]
  def change
    add_reference :quotes, :coin, null: false, foreign_key: true
  end
end

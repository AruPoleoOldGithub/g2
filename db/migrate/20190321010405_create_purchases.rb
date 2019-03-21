class CreatePurchases < ActiveRecord::Migration[5.2]
  def change
    create_table :purchases do |t|
      t.string :name
      t.string :description
      t.string :link
      t.belongs_to :house
      t.timestamps
    end
  end
end

class CreateMarkets < ActiveRecord::Migration
  def change
    create_table :markets do |t|
      t.integer :investors
      t.string :name
      t.string :projects

      t.timestamps null: false
    end
  end
end

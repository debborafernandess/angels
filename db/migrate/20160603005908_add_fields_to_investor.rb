class AddFieldsToInvestor < ActiveRecord::Migration
  def change
    add_column :investors, :name, :string
    add_column :investors, :nickname, :string
    add_column :investors, :bio, :text
    add_column :investors, :min_investment, :double
    add_column :investors, :max_investment, :double
  end
end

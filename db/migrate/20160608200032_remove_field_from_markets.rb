class RemoveFieldFromMarkets < ActiveRecord::Migration
  def change
    remove_column :markets, :project_id, :integer
  end
end

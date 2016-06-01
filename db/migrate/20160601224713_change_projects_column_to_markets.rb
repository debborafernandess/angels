class ChangeProjectsColumnToMarkets < ActiveRecord::Migration
  def change
    remove_column :markets, :projects
    add_column :markets, :project_id, :integer, index: true
  end
end

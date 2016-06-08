class DropTableMarketsProjects < ActiveRecord::Migration
  def change
    drop_join_table(:markets, :projects)
  end
end

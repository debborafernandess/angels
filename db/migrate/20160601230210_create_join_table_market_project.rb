class CreateJoinTableMarketProject < ActiveRecord::Migration
  def change
    create_join_table :markets, :projects do |t|
      t.index [:market_id, :project_id]
      t.index [:project_id, :market_id]
    end
  end
end

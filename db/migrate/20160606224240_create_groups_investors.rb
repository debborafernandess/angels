class CreateGroupsInvestors < ActiveRecord::Migration
  def change
    create_table :groups_investors do |t|
      t.references :group, index: true, foreign_key: true
      t.references :investor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

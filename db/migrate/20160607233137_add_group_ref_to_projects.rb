class AddGroupRefToProjects < ActiveRecord::Migration
  def change
    add_reference :projects, :group, index: true, foreign_key: true
  end
end

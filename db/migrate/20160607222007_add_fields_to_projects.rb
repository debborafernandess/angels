class AddFieldsToProjects < ActiveRecord::Migration
  def change
    add_column :projects, :description, :text
    add_column :projects, :partner, :string
  end
end

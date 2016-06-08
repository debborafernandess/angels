class RemoveFieldsFromProjects < ActiveRecord::Migration
  def change
    remove_column :projects, :value_proposal, :string
    remove_column :projects, :core_business, :string
    remove_column :projects, :partnerships, :string
    remove_column :projects, :expenses, :string
    remove_column :projects, :main_resources, :string
    remove_column :projects, :communication, :string
    remove_column :projects, :relationship, :string
  end
end

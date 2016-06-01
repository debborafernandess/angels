class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.text :value_proposal
      t.string :target
      t.text :core_business
      t.text :partnerships
      t.text :pricing
      t.text :expenses
      t.text :main_resources
      t.text :communication
      t.text :relationship

      t.timestamps null: false
    end
  end
end

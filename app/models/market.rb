class Market < ActiveRecord::Base
  has_many :markets_projects
  has_many :projects, through: :markets_projects
  has_many :groups
end

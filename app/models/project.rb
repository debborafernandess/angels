class Project < ActiveRecord::Base
  has_many :markets_projects
  has_many :markets, through: :markets_projects
  belongs_to :group
end

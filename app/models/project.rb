class Project < ActiveRecord::Base
  belongs_to :group
  validates :name, :description, :target, :partner, presence: true
end

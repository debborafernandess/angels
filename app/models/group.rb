class Group < ActiveRecord::Base
  belongs_to :market
  has_many :projects
  has_many :groups_investors
  has_many :investors, through: :groups_investors

  validates :name, :description, presence: true
end

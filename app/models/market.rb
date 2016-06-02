class Market < ActiveRecord::Base
  validates :name, :projects, presence: true
end

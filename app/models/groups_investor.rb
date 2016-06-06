class GroupsInvestor < ActiveRecord::Base
  belongs_to :group
  belongs_to :investor
end

class MarketsProject < ActiveRecord::Base
  belongs_to :market
  belongs_to :project
end

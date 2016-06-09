module ApplicationHelper
  def investors_name(group)
    group.investors.pluck(:name).map(&:capitalize).join(', ')
  end
end

module ApplicationHelper
  def investors_name(group)
    return 'Nenhum investidor faz parte deste grupo' if group.investors.count.zero?
    group.investors.pluck(:name).map(&:capitalize).join(', ')
  end
end

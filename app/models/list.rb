class List < ApplicationRecord
  has_many :items

  def total_items
    @total_items ||= items.count
  end

  def completed_items
    @completed_items ||= items.completed.count
  end

  def percent_complete
    return 0 if total_items == 0
    (100 * completed_items.to_f / total_items).round(1)
  end

end

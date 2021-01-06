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
    (100 * completed_items.to_f / total_items).round(0)
  end

  def status
    case percent_complete.to_i
      when 0
        'not started'
      when 100
        'completed'
      else 
        'in progress...'
    end
  end

  def badge_color
    case percent_complete.to_i
      when 0
        "badge-no"
      when 100
        "badge-yes"
      else 
        "badge-progress"
     end
  end

end

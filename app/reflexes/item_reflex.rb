# frozen_string_literal: true

class ItemReflex < ApplicationReflex

  def mark_complete
    item = Item.find(element.dataset.id)
    item.update(completed: true, completed_at: Time.now)
  end

  def mark_incomplete
    item = Item.find(element.dataset.id)
    item.update(completed: false, completed_at: nil)
  end

end

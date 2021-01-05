class Item < ApplicationRecord
  belongs_to :list

  scope :completed, ->  do
    where(completed: true)    
  end
end

class Todo < ApplicationRecord
  validates :title, :presence => true
  validates :description, :presence => true

  has_many :todo_items

  accepts_nested_attributes_for :todo_items

end

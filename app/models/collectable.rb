class Collectable < ApplicationRecord
  belongs_to :user
  belongs_to :collection

  validates :name, presence: true
end

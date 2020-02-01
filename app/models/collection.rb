# frozen_string_literal: true

class Collection < ApplicationRecord
  has_many :collectables, dependent: :destroy
  validates :name, presence: true
  belongs_to :user
end

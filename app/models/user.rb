# frozen_string_literal: true

# User Model
class User < ApplicationRecord
  has_secure_password
  has_many :collections, :collectables
end

# frozen_string_literal: true

class Plan < ApplicationRecord
  has_many :subscriptions

  validates :name, :monthly_price, presence: true
end

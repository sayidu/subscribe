# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Plan, type: :model do
  it { is_expected.to have_many(:subscriptions) }

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:monthly_price) }
end

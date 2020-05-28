rrequire 'rails_helper'

RSpec.describe Subscription, type: :model do
  it { is_expected.to belong_to(:box_specification) }
  it { is_expected.to belong_to(:cancellation) }
  it { is_expected.to belong_to(:personal_service_setting) }
  it { is_expected.to belong_to(:regional_menu).inverse_of(:weekly_plans) }
end

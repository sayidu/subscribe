# frozen_string_literal: true

require 'rails_helper'

describe Subscription, type: :request do
  it 'renders the subscriptions view' do
    get '/'

    expect(response).to have_http_status(200)
  end
end

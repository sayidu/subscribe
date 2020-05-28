# frozen_string_literal: true

module Admins
  class SubscriptionsController < ApplicationController
    def index
      @subscriptions = fetch_subscriptions.page(params[:page]).per(100)
      render 'admins/subscriptions'
    end

    private

    def fetch_subscriptions
      Subscription.includes(:plan).order(created_at: :desc)
    end
  end
end

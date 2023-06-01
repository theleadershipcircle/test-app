class SecureController < ApplicationController
  before_action :authenticate_user!

  def index
    @example_data = {
      message: 'This is a secure page',
      timestamp: Time.now
    }
  end
end
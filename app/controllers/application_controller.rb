class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper
  include MicropostsHelper

  # for csrf protection
  def handle_unverified_request
    sign_out
    supper
  end
end

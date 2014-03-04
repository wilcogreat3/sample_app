class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper

   # CSRF�Ǝ㐫�̑΍�̂��߂ɁA�T�C���A�E�g������B
  def handle_unverified_request
    sign_out
    super
  end
end

class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :debug

  def debug
#    debugger
  end
end


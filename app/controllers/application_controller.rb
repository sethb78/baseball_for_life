class ApplicationController < ActionController::Base
  protect_from_forgery
  include SessionsHelper


  before_filter :max_week

protected

def max_week
  @latest_week=PowerRanking.minimum(:Week) 
end

end

class ApplicationController < ActionController::Base
  include Pundit
  def pundit_user
    AuthorizationContext.new(current_user, current_organization)
  end
end

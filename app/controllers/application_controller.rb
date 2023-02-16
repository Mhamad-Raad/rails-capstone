class ApplicationController < ActionController::Base
  protected

  def after_sign_in_path_for(_resource)
    # replace "path/to/redirect" with the path you want to redirect to
    '/groups'
  end
end

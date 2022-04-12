class ApplicationController < ActionController::Base
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
  
  def after_sign_in_path_for(resource)
     super
  end

  def after_sign_out_path_for(resource_or_scope)
    super
  end
end

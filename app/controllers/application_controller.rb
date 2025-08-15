class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
   def after_sign_out_path_for(resource_or_scope)
    root_path
   end
    layout :layout_by_resource

  private

  def layout_by_resource
    if devise_controller?
      "auth" # use auth.html.erb layout for Devise pages
    else
      "application" # default layout with navbar
    end
  end
end

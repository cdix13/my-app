class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  protect_from_forgery with: :exception
  layout :determine_layout

  protected

  def determine_layout
    module_name = self.class.to_s.split('::').first
    if module_name == 'Backend'
      'backend/application'
    elsif module_name == 'Frontend'
      'frontend/application'
    elsif devise_controller?
      if resource_name == :admin
        'backend/devise'
      else
        'frontend/devise'
      end
    else
      'application'
    end
  end
end

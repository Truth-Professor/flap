class ApplicationController < ActionController::Base

	before_action :configure_permitted_parameters, if: :devise_controller?


  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name_kanji, :name_kana, :postal_code, :address, :phone_numder])
  end

end

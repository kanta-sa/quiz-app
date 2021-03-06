class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #deviseを利用する機能の時実行される
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    # サインアップ時にusernameのストロングパラメータを追加
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
  end

  def after_sign_in_path_for(resource)
    root_path # ログイン後に遷移するpathを設定
  end
end

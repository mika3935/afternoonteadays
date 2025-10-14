class ApplicationController < ActionController::Base
   before_action :authenticate_user!

  # ユーザー認証
  
  
  # Devise のパラメータ許可設定
  before_action :authenticate_user!,except: [:top] 
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # サインアップ時に name カラムも許可
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
  end

  # サインイン後のリダイレクト先
  def after_sign_in_path_for(resource)
    # posts_path を Devise コントローラ内でも確実に使う場合
    main_app.posts_path
  end
end


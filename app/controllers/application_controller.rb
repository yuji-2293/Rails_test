class ApplicationController < ActionController::Base
  before_action :require_login
  before_action :require_color

  add_flash_types :success, :danger

  private

  def not_authenticated
    redirect_to login_path, danger: 'ログインしてください'
  end

  def require_color
    @colors = Color.includes(:user).all
  end

end

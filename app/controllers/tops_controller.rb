class TopsController < ApplicationController
  skip_before_action :require_login, only: %i[index]
  def index
    @default_message = "色が選択されていません" if @colors.blank?
  end


end

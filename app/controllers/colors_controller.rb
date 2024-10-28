class ColorsController < ApplicationController

  def index;end

  def create
    @color = current_user.color.build(color_params)

    if @color.save
      redirect_to root_path, success: 'カラーボールが保存されました'
    else
      flash.now[:danger] = 'もう一度やり直してください'
      render "tops/index", status: :unprocessable_entity
    end

  end

  private
  def color_params
    params.require(:color).permit(:mood_color_id)
  end
end

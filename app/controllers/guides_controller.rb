class GuidesController < ApplicationController
  before_action :authenticate_user!
  # before_action :ensure_user_is_guide, only: [:new, :create]

  # def new
  #   @guide = current_user
  # end

  def create
    @guide = current_user
    if @guide.update(guide_params)
      redirect_to @guide, notice: 'Guide profile was successfully created.'
    else
      render :new
    end
  end

  private

  def guide_params
    params.require(:user).permit(:title, :description, :location, :language_spoken, :profile_picture, :bio)
  end

  def ensure_user_is_guide
    unless current_user.guide?
      redirect_to root_path, alert: 'You must be a guide to access this section.'
    end
  end
end

class CategoriesController < ApplicationController

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def after_sign_in_path_for(resource)
    current_user_path
  end

  def show
     @category = Category.find(params[:id])
  end

  def index
    @categories = Category.all
  end
end

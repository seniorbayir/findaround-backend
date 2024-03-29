#encoding : utf-8
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session

  def root
    render 'static/index'
  end

  def test
    render 'static/test'
  end
end

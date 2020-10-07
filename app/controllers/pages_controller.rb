class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]
  before_action :check_signed_in

  def home
  end

  private

  def check_signed_in
  #   redirect_to lists_path if signed_in?
  end

end

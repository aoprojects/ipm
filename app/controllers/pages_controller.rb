class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:my_account]


  def home
  end

  def about
  end

  def my_account
  end

  def privacy_policy
  end

  def terms
  end

  def faq
  end

  def contact_us
  end
end
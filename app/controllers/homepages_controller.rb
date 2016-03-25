class HomepagesController < ApplicationController
  include User::Pagination

  def homepage
    @users = User.order(:created_at).page(page).per(per_page)
  end
end

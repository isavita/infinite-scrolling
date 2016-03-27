class HomepagesController < ApplicationController
  include User::Pagination

  def homepage
    filters = {
      page: page,
      per: per_page,
      sort: { age: :desc },
      load: false # Avoid hitting database
    }
    @users_hash = User.search(filters)
  end
end

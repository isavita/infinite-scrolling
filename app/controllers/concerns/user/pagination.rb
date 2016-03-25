module User::Pagination
  UsersPerPage = {
    desktop: 5
  }

  protected
  def page
    params[:page] || 1
  end

  def per_page
    UsersPerPage[:desktop]
  end
end

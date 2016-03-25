require 'rails_helper'

describe HomepagesController, type: :controller do
  specify '#homepage' do
    get :homepage
    assert_template 'homepages/homepage'
  end
end

require 'test_helper'

class UserSignupTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "invalid signup information" do
    get new_user_url
    assert_no_difference 'User.count' do
      post users_create_path, user:
          {
              name:     "",
              email:    "user@invalid",
              password: "foo",
              password_confirmation: "bar"
          }
    end

    #assert_template 'users/new'
  end



end

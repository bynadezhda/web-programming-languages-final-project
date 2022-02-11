require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
    test "should get new" do
        get '/authors/sign_in'
        assert_response :success
      end
    
      test "should get create" do
        get '/authors/sign_up'
        assert_response :success
      end
end

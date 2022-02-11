class AppTest < ActionDispatch::IntegrationTest
  test 'should not go without login' do
    get '/posts'
    assert_redirected_to '/authors/sign_in'
  end

  test 'should not go without login second' do
    get '/posts/1/edit'
    assert_redirected_to '/authors/sign_in'
  end
end
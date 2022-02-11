require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "should be valid" do
    author = Author.create(email:"123@sad.ru",password:"123123")
    assert author.valid?
  end

  test "should not be valid without email" do
    author = Author.create(email:"",password:"123123")
    assert_not author.valid?
  end

  test "should not be valid without password" do
    author = Author.create(email:"123@sad.ru", password:"")
    assert_not author.valid?
  end
end

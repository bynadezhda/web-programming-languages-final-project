require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "should be valid" do
    Author.create(email:"123@sad.ru",password:"123123")
    post = Post.create(title:"eghfgh", description:'tdfgdfgdg',author:Author.first)
    assert post.valid?
  end

  test "should be valid without title" do
    Author.create(email:"123@sad.ru",password:"123123")
    post = Post.create(title:"", description:'tdfgdfgdg',author:Author.first)
    assert post.valid?
  end

  test "should be valid without description" do
    Author.create(email:"123@sad.ru",password:"123123")
    post = Post.create(title:"dfgfgdf", description:'',author:Author.first)
    assert post.valid?
  end
end

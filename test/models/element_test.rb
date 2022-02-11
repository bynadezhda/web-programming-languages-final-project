require 'test_helper'

class ElementTest < ActiveSupport::TestCase
  test "the truth" do
     assert true
  end

  test "should be valid" do
    Post.create(title:"e",description:'t')
    element = Element.create(element_type: "paragraph", post: Post.first, position: 1)
    assert element.valid?
  end

  test "should not be valid" do
    Post.create(title:"e",description:'t')
    element = Element.create(element_type: "ghf", post: Post.first, position: 1)
    assert_not element.valid?
  end

  test "should not be valid with empty element_type" do
    Post.create(title:"e", description:'t')
    element = Element.create(element_type: " ", post: Post.first, position: 1)
    assert_not element.valid?
  end
end

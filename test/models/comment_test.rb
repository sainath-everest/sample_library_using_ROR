require "test_helper"

class CommentTest < ActiveSupport::TestCase
  test "category should be valid" do
    @category = Category.new(name: "Sports")
    assert @category.valid?
  end
end

require "test_helper"

class ArticleTest < ActiveSupport::TestCase

  test "article should be valid" do
    @article = Article.new(title: "article_1", body: "this is sample desc", status: "public")
    puts @article.valid?
    assert @article.valid?
  end

end

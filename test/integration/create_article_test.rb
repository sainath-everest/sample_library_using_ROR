require "test_helper"

class CreateArticleTest < ActionDispatch::IntegrationTest

  test "new article form and create article" do
    get "/articles/new"
    assert_response :success
    assert_difference 'Article.count', 1 do
      post articles_path, params: { article: {title: "Travel", body: "this is sample desc", status: "public" }}
      assert_response :redirect
    end
    follow_redirect!
    assert_response :success
    assert_match "Travel", response.body

  end

  test "new article form and reject invalid create article" do
    get "/articles/new"
    assert_response :success
    assert_no_difference 'Article.count'  do
      post articles_path, params: { article: {title: "Travel", body: "sample", status: "public" }}
    end

  end
end

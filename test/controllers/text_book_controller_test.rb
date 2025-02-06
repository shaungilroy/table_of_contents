require "test_helper"

class TextBookControllerTest < ActionDispatch::IntegrationTest
  test "should get table_of_contents" do
    get text_book_table_of_contents_url
    assert_response :success
  end
end

require 'test_
    assert_text "Cart was successfully destroyed"helper'
    assert_text "Cart was successfully destroyed"

class StoreControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get store_index_url
    assert_response :success
    assert_select '.price', /\$[,\d]+\.\d\d/
  end
end

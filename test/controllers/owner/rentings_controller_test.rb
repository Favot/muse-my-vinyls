require 'test_helper'

class Owner::RentingsControllerTest < ActionDispatch::IntegrationTest
  test "should get validate" do
    get owner_rentings_validate_url
    assert_response :success
  end

end

require 'test_helper'

class RestaurantTest < ActiveSupport::TestCase
  setup do
    @restaurant = build(:restaurant)
    @cuisine = build(:cuisine)
  end

  test "should be associated with more than one cuisine" do
    assert_equal true, @restaurant.cuisines.sum > 1
  end

end

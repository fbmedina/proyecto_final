require 'test_helper'

class StoreTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "A store cant be created with no user" do
    s = Store.new(name:"First Store")
    assert_not s.valid?, "A store with no user should be invalid"
  end

end

require "test_helper"

class FetchApiServiceTest < ActiveSupport::TestCase
    
    test "it should return ca with a valid ip" do
     assert_equal(FetchApiService.new("24.48.0.1").perform, "24.48.0.1")
    end
end
     
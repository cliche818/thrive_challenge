require 'test_helper'

class JobsProviderTest < ActiveSupport::TestCase
  test "with the given roles, primary business and technical background required, return 13 listings" do
    result = JobsProvider.combinations

    assert_equal 13, result.size
  end
end

require 'test_helper'

class JobsProviderTest < ActiveSupport::TestCase

  #combinations
  test "with the given roles, primary business and technical background required, return 13 listings" do
    result = JobsProvider.combinations

    assert_equal 13, result.size
  end

  #json produced
  test "returns the appropriate json format" do
    result = JobsProvider.combinations.as_json
    actual = {'roleName' => 'Customer Success', 'primaryBusiness' => 'Accounting'}
    actual_pm_posting = {'roleName' => 'Product Manager', 'primaryBusiness' => 'Software development', 'technicalBackground' => 'Yes'}
    actual_pm_posting2 = {'roleName' => 'Product Manager', 'primaryBusiness' => 'Software development', 'technicalBackground' => 'No'}

    assert_equal actual, result[0]
    assert result.one? { |job| job == actual_pm_posting}
    assert result.one? { |job| job == actual_pm_posting2}
  end
end

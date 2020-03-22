require 'test_helper'

class JobsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get jobs_index_url
    jobs = JSON.parse(response.body)

    assert_equal 13, jobs.size
  end
end

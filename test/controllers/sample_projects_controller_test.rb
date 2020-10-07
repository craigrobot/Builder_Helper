require 'test_helper'

class SampleProjectsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sample_projects_index_url
    assert_response :success
  end

  test "should get show" do
    get sample_projects_show_url
    assert_response :success
  end

end

# frozen_string_literal: true

require 'test_helper'

class UserControllerTest < ActionDispatch::IntegrationTest
  test 'should get show' do
    get create_show_url
    assert_response :success
  end

  test 'should get update' do
    get create_update_url
    assert_response :success
  end
end

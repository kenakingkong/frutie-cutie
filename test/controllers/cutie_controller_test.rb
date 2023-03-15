# frozen_string_literal: true

require 'test_helper'

class CutieControllerTest < ActionDispatch::IntegrationTest
  test 'should get show' do
    get cutie_show_url
    assert_response :success
  end

  test 'should get update' do
    get cutie_update_url
    assert_response :success
  end

  test 'should get delete' do
    get cutie_delete_url
    assert_response :success
  end
end

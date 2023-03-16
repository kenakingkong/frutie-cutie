# frozen_string_literal: true

require 'test_helper'

class FeedingControllerTest < ActionDispatch::IntegrationTest
  test 'should get create' do
    get feeding_create_url
    assert_response :success
  end

  test 'should get index' do
    get feeding_index_url
    assert_response :success
  end

  test 'should get update' do
    get feeding_update_url
    assert_response :success
  end

  test 'should get delete' do
    get feeding_delete_url
    assert_response :success
  end

  test 'should get show' do
    get feeding_show_url
    assert_response :success
  end
end

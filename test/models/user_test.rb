# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'valid user only basic info' do
    user = User.new name: 'Jane Doe', phone: '1234567890'
    assert user.save
  end

  test 'valid user all info' do
    user = User.new name: 'Jane Doe', phone: '1234567890', birthday: DateTime.now, is_admin: true
    assert user.save
  end

  test 'invalid empty user' do
    user = User.new
    assert_raises ActiveRecord::NotNullViolation do
      user.save
    end
  end

  test 'invalid without name' do
    user = User.new phone: '1234567890', birthday: DateTime.now
    assert_raises ActiveRecord::NotNullViolation do
      user.save
    end
  end

  test 'invalid without phone' do
    user = User.new name: 'Jane Doe', birthday: DateTime.now
    assert_raises ActiveRecord::NotNullViolation do
      user.save
    end
  end
end

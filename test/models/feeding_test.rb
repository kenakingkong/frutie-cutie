# frozen_string_literal: true

require 'test_helper'

class FeedingTest < ActiveSupport::TestCase
  test 'valid feeding' do
    feeding = Feeding.new cutie_id: ActiveRecord::FixtureSet.identify('cutie_one'), item: 'apple', count: 0
    assert feeding.save
  end

  test 'invalid without cutie_id' do
    feeding = Feeding.new item: 'apple', count: 0
    assert_raise ActiveRecord::NotNullViolation do
      feeding.save
    end
  end

  test 'invalid without item' do
    feeding = Feeding.new cutie_id: ActiveRecord::FixtureSet.identify('cutie_one'), count: 0
    assert_raise ActiveRecord::NotNullViolation do
      feeding.save
    end
  end
end

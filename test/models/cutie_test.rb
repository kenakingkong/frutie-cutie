# frozen_string_literal: true

require 'test_helper'

class CutieTest < ActiveSupport::TestCase
  test 'valid cutie' do
    cutie = Cutie.new name: 'janie', character: 0, level: 0, user_id: ActiveRecord::FixtureSet.identify('user_one')
    assert cutie.save
  end

  test 'invalid without name' do
    cutie = Cutie.new character: 0, level: 0, user_id: ActiveRecord::FixtureSet.identify('user_one')
    assert_raises ActiveRecord::NotNullViolation do
      cutie.save
    end
  end

  test 'invalid without character' do
    cutie = Cutie.new name: 'janie', level: 0, user_id: ActiveRecord::FixtureSet.identify('user_one')
    assert_raises ActiveRecord::NotNullViolation do
      cutie.save
    end
  end

  test 'invalid without level' do
    cutie = Cutie.new name: 'janie', character: 0, user_id: ActiveRecord::FixtureSet.identify('user_one')
    assert_raises ActiveRecord::NotNullViolation do
      cutie.save
    end
  end

  test 'invalid without user' do
    cutie = Cutie.new name: 'janie', character: 0, level: 0
    assert_raises ActiveRecord::NotNullViolation do
      cutie.save
    end
  end
end

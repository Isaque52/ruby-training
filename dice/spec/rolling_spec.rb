# frozen_string_literal: true

require 'rolling'

RSpec.describe Rolling do
  it 'can create a new dice set' do
    expect(subject).not_to be_nil
  end

  it 'returns a set of integers between 1 and 6 when rolled' do
    dice = subject

    dice.roll(5)
    expect(dice.values).to be_an(Array)
    expect(dice.values.size).to eq(5)
    dice.each_value do |value|
      expect(value >= 1 && value <= 6)
        .to eq(true), "value #{value} must be between 1 and 6"
    end
  end

  it 'maintains the values until rolled again' do
    dice = subject
    dice.roll(5)
    first_time = dice.values
    second_time = dice.values
    expect(second_time).to eq(first_time)
  end

  it 'changes the values when rolled again' do
    dice = subject

    dice.roll(5)
    first_time = dice.values

    dice.roll(5)
    second_time = dice.values

    expect(second_time).not_to eq(first_time), 'Two rolls should not be equal'

    # THINK ABOUT IT:
    #
    # If the rolls are random, then it is possible (although not
    # likely) that two consecutive rolls are equal.  What would be a
    # better way to test this?
  end

  it 'can roll different numbers of dice' do
    dice = subject

    dice.roll(3)
    expect(dice.values.size).to eq(3)

    dice.roll(1)
    expect(dice.values.size).to eq(1)
  end
end

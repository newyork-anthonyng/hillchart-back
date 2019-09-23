require 'test_helper'

class ChartTest < ActiveSupport::TestCase
  test 'should not save chart without title' do
    chart = Chart.new(:progress => 42)
    assert_not chart.save, 'Saved the chart without a title'
  end

  test 'should create default for progress' do
    chart = Chart.new(:title => 'Walk dog')

    assert chart.save
    assert_equal chart.progress, 0
  end

  test 'should not save chart with progress above 100' do
    chart = Chart.new(
      :title => 'Walk dog',
      :progress => 101
    )

    assert_not chart.save, 'Saved the chart with progress of 101'
  end
end

require 'minitest/autorun'
require './lib/bank'
require './lib/team'

class DeepFreezableTest < Minitest::Test
  def test_deep_freezable
    # 配列のあたいは正しいか？
    assert_equal ['Japan', 'US', 'India'], Team::COUNTRIES

    # 配列自身が凍結されているか？
    assert Team::COUNTRIES.frozen?

    # 配列の要素がすべてfreezeされているか？
    assert Team::COUNTRIES.all? { |country| country.frozen? }
  end
end

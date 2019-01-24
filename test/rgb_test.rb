require 'minitest/autorun'
require "../lib/rgb"

class RgbTest < Minitest::Test
  # minitestはtestで始まるメソッドを実行する
  def test_to_hex
    # assert_equal 期待する結果　テスト対象となる値や式
    assert_equal '#000000', to_hex(0, 0, 0)
  end
end
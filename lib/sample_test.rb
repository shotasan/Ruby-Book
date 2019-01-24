require "minitest/autorun"

class SampleTest < Minitest::Test
  def test_sample #Minitestはtest_で始まるメソッドを探して実行する
    assert_equal "RUBY", nil.upcase #assert_equalはaとbが等しければパスする
  end
end

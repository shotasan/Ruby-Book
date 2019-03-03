require "minitest/autorun"
require "../lib/convert_hash_syntax"

# ロケット記法をシンボル記法に変換する
class ConvertHashSyntaxTest < Minitest::Test
  def test_convert_hash_syntax
    # <<~はヒアドキュメントから行頭の空白文字を自動的に取り除く記法
    old_syntax = <<~TEXT
      {
        :name => "Alice"
        :age=>20
        :gender  =>  :female
      }
    TEXT
    expected = <<~TEXT
      {
        name: "Alice"
        age: 20
        gender: :female
      }
    TEXT
    assert_equal expected, convert_hash_syntax(old_syntax)
  end
end
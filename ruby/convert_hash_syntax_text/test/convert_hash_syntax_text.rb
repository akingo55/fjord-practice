require 'minitest/autorun'
require './lib/convert_hash_syntax'

class ConvertHashSyntaxText < Minitest::Test
  def test_convert_hash_syntax_text
    old_sytax = <<~TEXT
      {
        :name => "Alice",
        :age => "22",
        :gender => :female
      }
    TEXT

    expected = <<~TEXT
      {
        name: "Alice",
        age: "22",
        gender: :female
      }
      TEXT

    assert_equal expected, convert_hash_syntax(old_sytax)
  end
end

print "Text?: "
text = gets.chomp

begin
  # ここでエラーが発生するとrescueされる
  print "Pattern? "
  pattern = gets.chomp
  regexp = Regexp.new(pattern)
rescue RegexpError => e
  puts "Invalid pattern: #{e.message}"
  # beginから再度処理が始まる
  retry
end

matches = text.scan(regexp)
if matches.size > 0
  puts "Matched: #{matches.join(",")}"
else
  puts "Nothing matched"
end


# def内部でrescueだけ書けばbeginを省略できる
# def test
#   通常処理
# rescue
#   エラー処理
# end

# def test
#   共通処理（ここでエラーが起きてもrescueされない）
# begin
#   エラーが起きる可能性のある処理
# rescue
#     エラー処理
# end

# ensure
#   エラーが起きても起きなくてもやってほしい処理

# どんなエラーが起きるかは想定できないため、どんなエラーが起きてもrescueに飛ばして処理を続行させるため例外処理を実装する
# 少しのエラーで処理を止めないことを目的とする

# エラーが予想できるときはif等を使って適切な処理をやり直させるrescueは使わない
# ex) 入力値が足らない場合はrenderでnewに飛ばす
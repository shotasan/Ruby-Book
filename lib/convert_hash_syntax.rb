def convert_hash_syntax(old_syntax)
  # 第一引数で正規表現にマッチする部分を取り出し、第二引数に指定した文字で置き換える
  # 第二引数の\1は正規表現でキャプチャした\w+が入っている
  old_syntax.gsub(/:(\w+) *=> */,'\1: ')
end
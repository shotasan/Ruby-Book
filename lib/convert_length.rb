UNITS = {m: 1.0, ft: 3.28, in: 39.37}
# fromの単位からtoの単位に変換するメソッド
# 変換後の長さ＝変換前の単位/変換前の単位の比率*変換後の単位の比率
# length = 変換前の単位　from = 変換前の単位の比率　to = 変換後の単位の比率
# キーワード引数としてfromやtoを使って意味をわかりやすくする
# 引数内の:mはデフォルト値を入れている
def convert_length(length, from: :m, to: :m)  
  # UNITS[from]で引数で指定された単位をキーとしてUNITSハッシュから単位の比率を取得する
  # 計算した結果はroundメソッドで四捨五入する
  (length / UNITS[from] * UNITS[to]).round(2)
end
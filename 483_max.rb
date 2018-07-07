require 'minruby'

def max(tree)
  case tree[0]
  when "lit"
    tree[1]
  else
    left  = max(tree[1])
    right = max(tree[2])
    left >= right ? left : right
  end
end

# 1. 計算式の文字列を読み込む
str = gets

# 2. 計算式の文字列を木に変換する
tree = minruby_parse(str)

# 3. 一番大きい値の葉を返す
answer = max(tree)

# 4. 一番大きい値を出力する
p(answer)

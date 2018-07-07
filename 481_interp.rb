require 'minruby'

def evaluate(tree)
  case tree[0]
  when "lit"
    tree[1]
  when "+"
    left  = evaluate(tree[1])
    right = evaluate(tree[2])
    left + right
  when "-"
    left  = evaluate(tree[1])
    right = evaluate(tree[2])
    left - right
  when "*"
    left  = evaluate(tree[1])
    right = evaluate(tree[2])
    left * right
  when "/"
    left  = evaluate(tree[1])
    right = evaluate(tree[2])
    left / right
  when "%"
    left  = evaluate(tree[1])
    right = evaluate(tree[2])
    left % right
  else "**"
    left  = evaluate(tree[1])
    right = evaluate(tree[2])
    left ** right
  end
end

# 1. 計算式の文字列を読み込む
str = gets

# 2. 計算式の文字列を計算の木に変換する
tree = minruby_parse(str)

# 3. 計算の木を実行(計算)する
answer = evaluate(tree)

# 4. 計算結果を出力する
p(answer)

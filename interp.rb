require 'minruby'

def evaluate(tree, env)
  case tree[0]
  when "lit"
    tree[1]
  when "+"
    evaluate(tree[1], env) + evaluate(tree[2], env)
  when "-"
    evaluate(tree[1], env) - evaluate(tree[2], env)
  when "*"
    evaluate(tree[1], env) * evaluate(tree[2], env)
  when "/"
    evaluate(tree[1], env) / evaluate(tree[2], env)
  when "%"
    evaluate(tree[1], env) % evaluate(tree[2], env)
  when "**"
    evaluate(tree[1], env) ** evaluate(tree[2], env)
  when "<"
    evaluate(tree[1], env) < evaluate(tree[2], env)
  when "<="
    evaluate(tree[1], env) <= evaluate(tree[2], env)
  when "=="
    evaluate(tree[1], env) == evaluate(tree[2], env)
  when ">="
    evaluate(tree[1], env) >= evaluate(tree[2], env)
  when ">"
    evaluate(tree[1], env) > evaluate(tree[2], env)
  when "!="
    evaluate(tree[1], env) != evaluate(tree[2], env)
  when "func_call" # 仮の実装
    p(evaluate(tree[2], env))
  when "stmts"
    i = 1
    last = nil
    while tree[i]
      last = evaluate(tree[i], env)
      i = i + 1
    end
    last
  when "var_assign"
    env[tree[1]] = evaluate(tree[2], env)
  when "var_ref"
    env[tree[1]]
  when "if"
    if evaluate(tree[1], env)
      evaluate(tree[2], env)
    else
      evaluate(tree[3], env)
    end
  when "while"
    while evaluate(tree[1], env)
      evaluate(tree[2], env)
    end
  when "while2"
    evaluate(tree[2], env)
    while evaluate(tree[1], env)
      evaluate(tree[2], env)
    end
  else
    pp(tree)
  end
end

# 1. 計算式の文字列を読み込む
str = minruby_load()

# 2. 計算式の文字列を計算の木に変換する
tree = minruby_parse(str)

# 3. 計算の木を実行(計算)する
env = {}
evaluate(tree, env)

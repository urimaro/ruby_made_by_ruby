require 'minruby'

def evaluate(tree, genv, lenv)
  case tree[0]
  when "lit"
    tree[1]
  when "+"
    evaluate(tree[1], genv, lenv) + evaluate(tree[2], genv, lenv)
  when "-"
    evaluate(tree[1], genv, lenv) - evaluate(tree[2], genv, lenv)
  when "*"
    evaluate(tree[1], genv, lenv) * evaluate(tree[2], genv, lenv)
  when "/"
    evaluate(tree[1], genv, lenv) / evaluate(tree[2], genv, lenv)
  when "%"
    evaluate(tree[1], genv, lenv) % evaluate(tree[2], genv, lenv)
  when "**"
    evaluate(tree[1], genv, lenv) ** evaluate(tree[2], genv, lenv)
  when "<"
    evaluate(tree[1], genv, lenv) < evaluate(tree[2], genv, lenv)
  when "<="
    evaluate(tree[1], genv, lenv) <= evaluate(tree[2], genv, lenv)
  when "=="
    evaluate(tree[1], genv, lenv) == evaluate(tree[2], genv, lenv)
  when ">="
    evaluate(tree[1], genv, lenv) >= evaluate(tree[2], genv, lenv)
  when ">"
    evaluate(tree[1], genv, lenv) > evaluate(tree[2], genv, lenv)
  when "!="
    evaluate(tree[1], genv, lenv) != evaluate(tree[2], genv, lenv)
  when "func_def"
    genv[tree[1]] = ["user_defined", tree[2], tree[3]]
  when "func_call"
    args = []
    i = 0
    while tree[i + 2]
      args[i] = evaluate(tree[i + 2], genv, lenv)
      i = i + 1
    end
    mhd = genv[tree[1]]
    if mhd[0] == "builtin"
      minruby_call(mhd[1], args)
    else
      new_lenv = {}
      params = mhd[1]
      i = 0
      while params[i]
        new_lenv[params[i]] = args[i]
        i = i + 1
      end
      evaluate(mhd[2], genv, new_lenv)
    end
  when "stmts"
    i = 1
    last = nil
    while tree[i]
      last = evaluate(tree[i], genv, lenv)
      i = i + 1
    end
    last
  when "var_assign"
    lenv[tree[1]] = evaluate(tree[2], genv, lenv)
  when "var_ref"
    lenv[tree[1]]
  when "if"
    if evaluate(tree[1], genv, lenv)
      evaluate(tree[2], genv, lenv)
    else
      evaluate(tree[3], genv, lenv)
    end
  when "while"
    while evaluate(tree[1], genv, lenv)
      evaluate(tree[2], genv, lenv)
    end
  when "while2"
    evaluate(tree[2], genv, lenv)
    while evaluate(tree[1], genv, lenv)
      evaluate(tree[2], genv, lenv)
    end
  when "ary_new"
    ary = []
    i = 0
    while tree[i + 1]
      ary[i] = evaluate(tree[i + 1], genv, lenv)
      i = i + 1
    end
    ary
  when "ary_ref"
    ary = evaluate(tree[1], genv, lenv)
    idx = evaluate(tree[2], genv, lenv)
    ary[idx]
  when "ary_assign"
    ary = evaluate(tree[1], genv, lenv)
    idx = evaluate(tree[2], genv, lenv)
    ary[idx] = evaluate(tree[3], genv, lenv)
  else
    pp(tree)
  end
end

# MinRuby組み込み関数
# def add(x, y)
#   x + y
# end

def fizzbuzz(n)
  i = 1
  while i <= n
    if (i % 3 == 0) && (i % 5 == 0)
      p("FizzBuzz")
    else
      if i % 3 == 0
        p("Fizz")
      else
        if i % 5 == 0
          p("Buzz")
        else
          p(i)
        end
      end
    end
    i = i + 1
  end
end

def fibonacci(n)
  case n
  when 0
    n
  when 1
    n
  else
    fibonacci(n - 2) + fibonacci(n - 1)
  end
end

# 1. 計算式の文字列を読み込む
str = minruby_load()

# 2. 計算式の文字列を計算の木に変換する
tree = minruby_parse(str)

# 3. 計算の木を実行(計算)する
genv = { "fibonacci" => ["builtin", "fibonacci"], "fizzbuzz" => ["builtin", "fizzbuzz"], "add" => ["builtin", "add"], "p" => ["builtin", "p"] }
lenv = {}
evaluate(tree, genv, lenv)

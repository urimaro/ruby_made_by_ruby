# 1.4 最初のプログラム(1+1=?)

```
goh@goh% ruby two.rb
2
```

```
goh@goh% ruby calc.rb
2
6
3
2
100
```

# 2 変数・分岐・ループ

```
goh@goh% ruby calc0.rb
100
```

```
goh@goh% ruby calc2.rb
goh@goh%
```

```
goh@goh% ruby calc2.rb
100
```

```
goh@goh% ruby calc3.rb
2
100
```

```
goh@goh% ruby calc_ext1.rb
101
```

```
goh@goh% ruby calc_ext2.rb
5
```

```
goh@goh% ruby calc_ext3.rb
1
1
```

```
goh@goh% ruby calc_ext4.rb
1
2
```

```
goh@goh% ruby calc_ext5.rb
1
2
```


```
goh@goh% ruby calc_ext6.rb
1
2
5
```

```
goh@goh% ruby calc4.rb
10
55
10
```

```
goh@goh% ruby calc5.rb
10
"はずれ！"
```

```
goh@goh% ruby calc5_ext1.rb
10
goh@goh% ruby calc5_ext1.rb
55
"あたりです！"
"おめでとうございます！"
```

```
goh@goh% ruby calc5_ext2.rb
10
"はずれ！"
"それはちょっと小さすぎるよ！"
"また遊んでね！"
goh@goh% ruby calc5_ext2.rb
55
"あたりです！"
"おめでとうございます！"
"また遊んでね！"
```

```
goh@goh% ruby calc6_ext1.rb
50
"はずれ！"
51
"はずれ！"
55
"あたり！"
```

```
goh@goh% ruby calc6_ext2.rb
500500
```

2.6.1 ループの間違い探し
iの計算とanswerの計算の順序が間違っている
以下が計算されてしまう
0 + 2 + 3 + …  + 1000 + 1001

```
goh@goh% ruby calc7.rb
501500
```

2.6.2 偶数だけ足し算する

```
goh@goh% ruby calc8.rb
250500
```

2.6.3 FizzBuzz

```
goh@goh% ruby fizzbuzz2.rb
1
2
"Fizz"
4
"Buzz"
"Fizz"
7
8
"Fizz"
"Buzz"
11
"Fizz"
13
14
"FizzBuzz"
16
17
"Fizz"
19
"Buzz"
"Fizz"
22
23
"Fizz"
"Buzz"
26
"Fizz"
28
29
"FizzBuzz"
31
32
"Fizz"
34
"Buzz"
"Fizz"
37
38
"Fizz"
"Buzz"
41
"Fizz"
43
44
"FizzBuzz"
46
47
"Fizz"
49
"Buzz"
"Fizz"
52
53
"Fizz"
"Buzz"
56
"Fizz"
58
59
"FizzBuzz"
61
62
"Fizz"
64
"Buzz"
"Fizz"
67
68
"Fizz"
"Buzz"
71
"Fizz"
73
74
"FizzBuzz"
76
77
"Fizz"
79
"Buzz"
"Fizz"
82
83
"Fizz"
"Buzz"
86
"Fizz"
88
89
"FizzBuzz"
91
92
"Fizz"
94
"Buzz"
"Fizz"
97
98
"Fizz"
"Buzz"
```

# 3 木を扱う - 関数 -

Rubyインタプリタを作る
Rubyインタプリタが扱うのは「Rubyで書かれたプログラム」

「プログラミング言語で書かれたプログラム」のような複雑なものを扱うのに使い勝手が良い形: 木
＜ 形: データ構造

この章で扱うこと
- 木: 配列
- 木をRubyで扱う方法: 関数

# 3.1 配列：値をまとめる

配列: 値を束ねたもの

```
goh@goh% ruby try-pair.rb
[10, 20]
```

# 3.1.1 配列から値を取り出す

```
goh@goh% ruby try-pair_ext1.rb
10
20
```

# 3.1.2 さまざまな配列

```
goh@goh% ruby array_ext1.rb
10
20
30
[10]
10
[]
```

# 3.1.3 「値」とは何か

値: それ以上計算が進まない式

```
goh@goh% ruby array_ext2.rb
10
"じゅう"
10
[20, 30]
[20, 30]
20
20
```

# 3.2 木

木: 複数のものに親子関係を与えたもの

節(せつ): 子どもを持つ
葉: 子どもを持たない
根: 親を持たない

# 3.2.2 部分的な木

部分木: 全体の木からある節とその子どもたちを取り出した木
葉が1つでも木
節: 複数の部分木をまとめたもの

# 3.2.3 木をRubyの配列で構築する

- 葉: 名前を要素に持つ配列
    e.g. leaf_a = ["葉A"]
- 節: 名前、左の部分木、右の部分木を要素に持つ
    e.g. node2 = ["節2", leaf_a, leaf_b]

# 3.2.4 木を分解する

```
goh@goh% ruby sub_tree.rb
"節1"
["節2", ["葉A"], ["葉B"]]
["節3", ["葉C"], ["葉D"]]
"節2"
["葉A"]
["葉B"]
"葉A"
nil
nil
```

# 3.3 関数: 木をあやつる強力な道具

```
goh@goh% ruby tree-names.rb
"節1"
"節2"
"葉A"
"葉B"
"節3"
"葉C"
"葉D"
```

# 3.3.1 関数で木をたどる

関数: プログラムの断片を使い回しできるようにしたもの

# 3.3.2 関数を定義する方法

「preorder(node1)」を日本で表現すると「node1にpreorderを適用する」

# 3.3.3 関数の中で関数を適用する

再帰: 関数定義の中で自分自身を用いること

# 3.4 計算の木

プログラムは木で表される
=> インタプリタにとって木は重要

「ファイルやフォルダ」「ゲーム木」「データベース」「経路検索」など木の概念は至るところで使われている

# 3.6.1 さまざまな木

```
goh@goh% ruby 361_various_tree.rb
"節1"
"節2"
"葉A"
"節3"
"葉B"
"葉C"
"葉D"
```

# 3.6.2 葉だけ列挙する

```
goh@goh% ruby 362_print_only_leaves.rb
"葉A"
"葉B"
"葉C"
"葉D"
```

# 3.6.3 帰りがけ順

```
goh@goh% ruby 363_postorder.rb
"葉A"
"葉B"
"節2"
"葉C"
"葉D"
"節3"
"節1"
```

# 4.1 電卓はインタプリタ

電卓: 四則演算だけからなるプログラミング言語のインタプリタ

# 4.1.1 あらためて計算の木について考える

計算の木: 部分木の組合せで複雑な計算式を表現

# 4.1.2 計算の木を実行する

構文解析/パース: 文字列を木に変換すること
構文木: 構文解析/パースして得られた木

# 4.1.3 抽象構文木

抽象化: 何かを行う上で不要な情報を削除すること
抽象構文木: 抽象化された木

# 4.2 インタプリタの動作の流れ

インタプリタの動作

1. プログラムを読み込む
2. 読み込んだプログラムを実行する

インタプリタの構成

1. 計算式の文字列を読み込む
2. 計算式の文字列を構文解析して計算の木にする
3. 計算の木を実行(計算)する
4. 計算結果を出力する

# 4.3 計算式の文字列を計算の木に変換する

構文解析には `minruby_parse` を使う

```
goh@goh% bundle exec ruby 430_parse_sample.rb
["+", ["lit", 1], ["*", ["lit", 2], ["lit", 4]]]
```

```
goh@goh% be ruby 430_parse_sample2.rb
"Use p"
["*", ["*", ["/", ["+", ["lit", 1], ["lit", 2]], ["lit", 3]], ["lit", 4]], ["+", ["+", ["/", ["lit", 56], ["lit", 7]], ["lit", 8]], ["lit", 9]]]
"Use pp"
["*",
 ["*", ["/", ["+", ["lit", 1], ["lit", 2]], ["lit", 3]], ["lit", 4]],
 ["+", ["+", ["/", ["lit", 56], ["lit", 7]], ["lit", 8]], ["lit", 9]]]
```

# 4.4 関数の引数と返り値

引数: 関数が受け取る値
返り値: 関数が返す値

```
goh@goh% be ruby 440_parameter_and_return_value.rb
"Addition!"
42
```

# 4.5 足し算の木を扱う

```
goh@goh% be ruby 450_sum.rb
10
```

# 4.6 四則演算に対応

case文
1. `case` 直後の式を評価
2. 1の結果が `when` 直後の値と一致したら、 `when` の後の命令を実行
3. 1の結果がどの `when` 直後の値と一致しないなら、 `else` の後の命令を実行

```
goh@goh% be ruby 460_interp.rb
(1 + 2) / 3 * 4 * (56 / 7 + 8 + 9)
100
```

# 4.8.1 演算の追加

剰余(%)、累乗(\*\*)を追加する

```
goh@goh% be ruby 481_interp.rb
8 % 3
2
goh@goh% be ruby 481_interp.rb
2 ** 4
16
```

# 4.8.2 比較式の追加

`<` `<=` `==` `!=` `>=` `>` を追加する

```
goh@goh% be ruby 482_interp.rb
1 + 1 == 2
true
goh@goh% be ruby 482_interp.rb
1 + 1 == 3
false
goh@goh% be ruby 482_interp.rb
1 + 1 != 2
false
goh@goh% be ruby 482_interp.rb
1 + 1 != 3
true
goh@goh% be ruby 482_interp.rb
1 + 1 < 2
false
goh@goh% be ruby 482_interp.rb
1 + 1 < 3
true
goh@goh% be ruby 482_interp.rb
1 + 1 <= 1
false
goh@goh% be ruby 482_interp.rb
1 + 1 <= 2
true
goh@goh% be ruby 482_interp.rb
1 + 1 >= 2
true
goh@goh% be ruby 482_interp.rb
1 + 1 >= 3
false
goh@goh% be ruby 482_interp.rb
1 + 1 > 2
false
goh@goh% be ruby 482_interp.rb
1 + 1 > 1
true
```

# 4.8.3 最大の葉

```
goh@goh%be ruby 483_max.rb
1 + 2 * 3
3
goh@goh%be ruby 483_max.rb
1 + 4 + 3
4
goh@goh%be ruby 483_max.rb
10 + 10 + 10
10
```

# 5.1 ファイルから入力を読み取る

```
goh@goh% be ruby 510_interp.rb
1 + 1
2
goh@goh% be ruby 510_interp.rb
(1 + 2) / 3 * 4 * (56 / 7 + 8 + 9)
100
```

# 5.1.1 そs−スコードを読み込むようにする

minruby_load()
指定されたファイルを読み込んで文字列として返す

# 5.1.2 デバッグ出力関数pを実装する

四則演算言語の関数として、 `p` を実装する
この段階では仮実装とする

# 5.1.4 四則演算インタプリタにソースコードを渡して実行する

```
goh@goh% be ruby 510_interp.rb test.rb
42
```

# 5.2.1 計算式とプログラムの違い

計算式: 単文
プログラム: 複文(式が複数ある)

# 5.2.2 複文の抽象構文木

```
goh@goh% be ruby 522_statements.rb
["stmts",
 ["+", ["lit", 1], ["lit", 2]],
 ["*", ["lit", 6], ["lit", 7]],
 ["+", ["lit", 40], ["lit", 2]]]
```

# 5.2.3 複文の実装

1. ラベル(節が持つ名前)が `stmts` の場合を追加する
2. `stmts` が持つ部分木を順番に実行する
3. 最後に実行した部分木の結果を返す

# 5.2.4 複文の実行

```
goh@goh% be ruby 520_interp.rb 524_test.rb
3
42
42
```

# 5.3.1 変数代入の抽象構文木

変数代入
- ラベル: var_assign
- 左: 変数名
- 右: 代入する値

```
goh@goh% be ruby 531_variable.rb
["stmts",
 ["var_assign", "x", ["lit", 1]],
 ["var_assign", "y", ["*", ["lit", 2], ["lit", 3]]]]
```

# 5.3.2 ハッシュ

ハッシュ: 値と値の対応表

```
# 作成
2.5.1 pry> hsh = { "foo" => 1, "bar" => 2 }
=> {"foo"=>1, "bar"=>2}
2.5.1 pry> p(hsh)
{"foo"=>1, "bar"=>2}
=> {"foo"=>1, "bar"=>2}

# 参照
2.5.1 pry> p(hsh["foo"])
1
=> 1

# 対応を追加
2.5.1 pry> hsh["answer"] = 42
=> 42
2.5.1 pry> p(hsh["answer"])
42
=> 42
2.5.1 pry> p(hsh)
{"foo"=>1, "bar"=>2, "answer"=>42}
=> {"foo"=>1, "bar"=>2, "answer"=>42}

# 対応の値を更新
2.5.1 pry> hsh["foo"] = 100
=> 100
2.5.1 pry> p(hsh["foo"])
100
=> 100
2.5.1 pry> p(hsh)
{"foo"=>100, "bar"=>2, "answer"=>42}
=> {"foo"=>100, "bar"=>2, "answer"=>42}
```

# 5.3.3 環境：変数名と値の対応関係

環境: 変数名と値が対応したハッシュ

# 5.4 変数参照を実装する

```
goh@goh% be ruby 540_reference_variable.rb
["stmts",
 ["var_assign", "x", ["lit", 1]],
 ["var_assign", "y", ["+", ["lit", 2], ["var_ref", "x"]]]]
```

# 5.5 動作確認

```
goh@goh% be ruby 540_interp.rb 550_test.rb
3
```

# 5.6 まとめ

Rubyは以下のように扱う

- false, nil: 偽
- 上記以外: 真

# 5.7.1 現状のインタプリタで変数をおさらい

```
goh@goh% be ruby 560_interp.rb calc2.rb
100
```

# 5.7.2 足し算のカウント

プロファイラ:
どういう種類の計算をどのくらい行っているか数えたりするツール
プログラムを高速化するときに使う

```
goh@goh% be ruby 572_interp.rb 572_plus_count.rb
2
4
```

# 5.7.3 デバッグのコツ

エラーが発生したら、 `evaluate` の最初に `pp(tree)` を入れて調べれば良いが、大量にメッセージが出力されてしまう
扱い方がわからない節に出会ったら報告させるようにする

```
goh@goh% be ruby 573_interp.rb 573_debug.rb
["**", ["lit", 2], ["lit", 3]]
Traceback (most recent call last):
	4: from 573_interp.rb:42:in `<main>'
	3: from 573_interp.rb:21:in `evaluate'
	2: from 573_interp.rb:26:in `evaluate'
	1: from 573_interp.rb:8:in `evaluate'
573_interp.rb:8:in `+': Array can't be coerced into Integer (TypeError)
```

# 6.1 if文を実装する

`if` 文をparseしてみる

```
goh@goh% be ruby 610_if_statement.rb
["if",
 ["==", ["lit", 0], ["lit", 0]],
 ["func_call", "p", ["lit", 42]],
 ["func_call", "p", ["lit", 43]]]
```

`interp.rb` において、 `if` 文の実装は環境を参照したり、変更していない
すなわち、変数を参照していないことに注目

```
goh@goh% be ruby interp.rb 610_if_statement_sample.rb
42
```

# 6.2 ちょっと寄り道：インタプリタとは

インタプリタ: 言語Xで書かれたプログラムを実行する、言語Yで書かれたプログラム
言語X: ターゲット言語
言語Y: ホスト言語

インタプリタの本質: ターゲット言語の言語機能をホスト言語に丸投げすること

# 6.3 while文を実装する

`while` 文をparseしてみる

```
goh@goh% be ruby 630_while_statement.rb
["stmts",
 ["var_assign", "i", ["lit", 0]],
 ["while",
  ["<", ["var_ref", "i"], ["lit", 10]],
  ["stmts",
   ["func_call", "p", ["var_ref", "i"]],
   ["var_assign", "i", ["+", ["var_ref", "i"], ["lit", 1]]]]]]
```

```
goh@goh% be ruby interp.rb 630_while_statement_sample.rb
0
1
2
3
4
5
6
7
8
9
```

# 6.4 case文は？

`case` 文をparseしてみる

```
goh@goh% be ruby 640_case_statement.rb
["if",
 ["==", ["lit", 42], ["lit", 0]],
 ["func_call", "p", ["lit", 0]],
 ["if",
  ["==", ["lit", 42], ["lit", 1]],
  ["func_call", "p", ["lit", 1]],
  ["func_call", "p", ["lit", 2]]]]
```

```
goh@goh% be ruby interp.rb 640_case_statement_sample.rb
2
```

`case` 文は `if` 文を使って表現できるが、見やすく、書きやすいのでプログラマにとっては便利な機能

糖衣構文:
構文解析の段階で他の言語機能を使ったプログラムに変換して扱うもの
Rubyの `case` 文は単純な糖衣構文ではない

# 6.6.1 帰ってきたFizzBuzz

`%` `**` をparseしてみる

```
goh@goh% be ruby 661_modulo_exponential.rb
["stmts", ["%", ["lit", 5], ["lit", 3]], ["**", ["lit", 2], ["lit", 4]]]
```

`interp.rb` を使って `fizzbuzz.rb` を実行する

```
goh@goh% be ruby interp.rb fizzbuzz.rb
1
2
"Fizz"
4
"Buzz"
"Fizz"
7
8
"Fizz"
"Buzz"
11
"Fizz"
13
14
"FizzBuzz"
16
17
"Fizz"
19
"Buzz"
"Fizz"
22
23
"Fizz"
"Buzz"
26
"Fizz"
28
29
"FizzBuzz"
31
32
"Fizz"
34
"Buzz"
"Fizz"
37
38
"Fizz"
"Buzz"
41
"Fizz"
43
44
"FizzBuzz"
46
47
"Fizz"
49
"Buzz"
"Fizz"
52
53
"Fizz"
"Buzz"
56
"Fizz"
58
59
"FizzBuzz"
61
62
"Fizz"
64
"Buzz"
"Fizz"
67
68
"Fizz"
"Buzz"
71
"Fizz"
73
74
"FizzBuzz"
76
77
"Fizz"
79
"Buzz"
"Fizz"
82
83
"Fizz"
"Buzz"
86
"Fizz"
88
89
"FizzBuzz"
91
92
"Fizz"
94
"Buzz"
"Fizz"
97
98
"Fizz"
"Buzz"
```

1から10までの階乗を計算した

```
goh@goh% be ruby 661_factorial.rb
3628800
goh@goh% pry
2.5.1 pry> 1 * 2 * 3 * 4 * 5 * 6 * 7 * 8 * 9 * 10
=> 3628800
```

100までの素数を順番に出力する
`minruby_parse` は `else` がない `if` 文に対応していないみたい…

```
goh@goh% be ruby interp.rb 661_prime_sample.rb
2
3
5
7
11
13
17
19
23
29
31
37
41
43
47
53
59
61
67
71
73
79
83
89
97
```

# 6.6.2 begin ... end whileの実装

`begin ... end while` をparseしてみる

```
goh@goh% be ruby 662_begin_end_while.rb
["stmts",
 ["var_assign", "i", ["lit", 10]],
 ["while2",
  [">", ["var_ref", "i"], ["lit", 0]],
  ["stmts",
   ["func_call", "p", ["var_ref", "i"]],
   ["var_assign", "i", ["-", ["var_ref", "i"], ["lit", 1]]]]]]
```

```
goh@goh% be ruby interp.rb 662_begin_end_while_sample.rb
10
9
8
7
6
5
4
3
2
1
```

# 6.6.3 case文の意味

Rubyで実行した場合

```
goh@goh% be ruby 663_case.rb
42
"others"
```

minrubyで実行した場合

```
goh@goh% be ruby interp.rb 663_case.rb
42
42
"others"
```

Rubyの場合、 `case` の条件を評価するのは1回
minrubyの場合、 `when` の数だけ条件を評価する

# 7.1 ユーザ定義関数と組み込み関数

- ユーザ定義関数: `def` `end` を使って自分で定義する関数
- 組み込み関数: インタプリタに最初から用意されている関数

# 7.2 関数の環境

変数同様、関数名と関数定義を対応付けたハッシュで管理する

- 関数の環境: genv
- 変数の環境: lenv  
    `env` から `lenv` に名前を変更


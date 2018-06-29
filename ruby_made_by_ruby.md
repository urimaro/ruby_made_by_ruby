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


def fib(x)
  if x <= 1
    x
  else
    fib(x - 1) + fib(x - 2)
  end
end

i = 0
max = 10
while i < max
  p(fib(i))
  i = i + 1
end

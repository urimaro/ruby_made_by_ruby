require 'minruby'
pp(minruby_parse("
i = 2
max = 100
while i <= max
  prime = true
  j = 2

  while j < i
    if (i % j) == 0
      prime = false
    else
    end

    j = j + 1
  end

  if prime
    p(i)
  else
  end

  i = i + 1
end
"))

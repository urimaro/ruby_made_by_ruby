def even?(n)
  if n == 0
    true
  else
    odd?(n - 1)
  end
end

def odd?(n)
  if n == 0
    false
  else
    even?(n - 1)
  end
end

p("even?(2):")
p(even?(2))
p("even?(3)")
p(even?(3))

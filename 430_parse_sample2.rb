require 'minruby'

tree = minruby_parse("(1 + 2) / 3 * 4 * (56 / 7 + 8 + 9)")
p("Use p")
p(tree)
p("Use pp")
pp(tree)

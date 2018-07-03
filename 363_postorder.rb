def preoder(tree)
  if tree[0].start_with?("節")
    preoder(tree[1])
    preoder(tree[2])
  end
  p tree[0]
end

node1 = ["節1", ["節2", ["葉A"], ["葉B"]], ["節3", ["葉C"], ["葉D"]]]

preoder(node1)

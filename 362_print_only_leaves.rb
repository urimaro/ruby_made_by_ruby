def preoder(tree)
  if tree[0].start_with?("葉")
    p tree[0]
  end
  if tree[0].start_with?("節")
    preoder(tree[1])
    preoder(tree[2])
  end
end

node1 = ["節1", ["節2", ["葉A"], ["節3", ["葉B"], ["葉C"]]], ["葉D"]]

preoder(node1)

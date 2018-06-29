node1 = ["節1", ["節2", ["葉A"], ["葉B"]], ["節3", ["葉C"], ["葉D"]]]
p(node1[0])

node2 = node1[1]
p(node2)

node3 = node1[2]
p(node3)

p(node2[0])
p(node2[1])
p(node2[2])

leaf_a = node2[1]
p(leaf_a[0])
p(leaf_a[1])
p(leaf_a[2])

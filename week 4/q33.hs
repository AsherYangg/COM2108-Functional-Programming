data BinaryTree a = Leaf a | Node (BinaryTree a) a (BinaryTree a)

balance :: [a] -> BinaryTree a
balance [x] = Leaf x
balance xs = Node (balance left) mid (balance right)
  where
    (left, mid:right) = splitAt (length xs `div` 2) xs
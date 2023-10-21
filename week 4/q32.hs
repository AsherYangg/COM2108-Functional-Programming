data BinaryTree a = Leaf a | Node (BinaryTree a) a (BinaryTree a)

size :: BinaryTree a -> Int
size (Leaf _) = 1
size (Node left _ right) = 1 + size left + size right

isComplete :: BinaryTree a -> Bool
isComplete (Leaf _) = True

isComplete (Node left _ right) = 
    leftSize == rightSize && isComplete left && isComplete right
        where leftSize = size left
              rightSize = size right




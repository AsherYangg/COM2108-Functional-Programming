{-
这个 lambda 表达式是一个函数，它接受一个列表作为输入，并返回列表的尾部。
它使用模式匹配来将输入列表与一个模式匹配，
该模式丢弃第一个元素并将列表的其余部分绑定到变量 xs 上。然后函数返回 xs，也就是输入列表的尾部。
-}
(\ (_:xs) -> xs)

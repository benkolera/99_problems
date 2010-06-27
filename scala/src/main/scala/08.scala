object q08 {
  def hlpr[A](last: A, acc: List[A], l: List[A]):List[A] = (last,l) match {
    case (_,Nil)            => acc
    case (a,b::xs) if a==b  => hlpr(a,acc,xs)
    case (a,b::xs)          => hlpr(b,b::acc,xs)
  }

  def compress[A](l: List[A]):List[A] = hlpr(l.head,List(l.head),l.tail).reverse
}

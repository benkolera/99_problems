/*
  Pack consecutive duplicates of list elements into sublists.  If a list 
  contains repeated elements they should be placed in separate sublists.

  Example:
  scala> pack(List('a, 'a, 'a, 'a, 'b, 'c, 'c, 'a, 'a, 'd, 'e, 'e, 'e,'e))
  res0: List[List[Symbol]] = List(List('a, 'a, 'a, 'a), List('b),
  List('c, 'c), List('a, 'a), List('d), List('e, 'e, 'e, 'e))
*/

object q09 {
  def hlpr[A](
    work: List[A], 
    acc: List[List[A]], 
    l: List[A]
  ):List[List[A]] = (work,l) match {
    case (_,Nil)                => work :: acc
    case (a::_,b::xs) if a==b   => hlpr(b::work,acc,xs)
    case (_,b::xs)              => hlpr(b::Nil,work::acc,xs)
  }

  def pack[A](l: List[A]):List[List[A]] = hlpr(l.head :: Nil,Nil,l.tail).reverse

  //And now using the handy span function of Seq
  def packLib[A](l: List[A]):List[List[A]] = l match {
    case Nil    => Nil
    case a::xs  => val (part,rest) = l.span(_ == a); part :: packLib(rest)
  }
}

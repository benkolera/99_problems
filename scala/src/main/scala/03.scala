object q03 {
  def kth[A](i: Int, l: List[A]):A = (i,l) match {
    case (_,List()) => throw new RuntimeException("i > l.length")
    case (0,a::_)   => a
    case (_,_)      => kth(i-1,l.tail)
  }
}

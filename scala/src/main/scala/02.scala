object q02 {
  def penultimate[A](l: List[A]):A = l match {
    case List()     => throw new RuntimeException("Can't call on list len > 2")
    case List(a)    => throw new RuntimeException("Can't call on list len > 2")
    case List(a,b)  => a
    case _ => penultimate(l.tail)
  }
}

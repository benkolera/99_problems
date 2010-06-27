object q01 {
  def last[A](l: List[A]): A = l match {
    case Nil => throw new RuntimeException("Can't call last on an empty list")
    case a :: Nil => a
    case _ => last(l.tail)
  }
}

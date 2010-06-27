object q05 {
  def reverseHlp[A](acc: List[A], l: List[A]):List[A] = l match {
    case List() => acc
    case a :: _ => reverseHlp(a::acc, l.tail)
  }
  
  def reverse[A](l: List[A]):List[A] = reverseHlp(Nil,l)
}

object q07 {
  def flatten(l: List[Any]):List[Any] = l flatMap {
    case l: List[_] => flatten(l)
    case a @ _      => List(a)
  }
}

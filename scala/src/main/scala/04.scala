object q04 {
  def len(l: List[Any]):Int = l match {
    case List() => 0
    case a::_ => 1 + len(l.tail)  
  }
}

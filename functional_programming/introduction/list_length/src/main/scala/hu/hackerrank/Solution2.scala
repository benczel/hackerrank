package hu.hackerrank

object Solution2 {

  def rec(arr:List[Int], acc:Int):Int = {
    if(arr.length !=0)
      rec(arr.tail, acc + 1)
    else
      acc
  }


  def f(arr:List[Int]):Int = {
    rec(arr,0)
  }


  def f2(arr:List[Int]):Int = if (arr.isEmpty) 0 else 1 + f(arr.tail)

  def main(args:Array[String]):Unit = {
    val list = List(2, 5, 1, 4, 3, 7, 8,9)
    assert(list.length == f(list))
    assert(list.length == f2(list))
  }
}

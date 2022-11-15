package hu.hackerrank

object Solution {


  def f2(arr:List[Int]):Int = {
    arr.foldLeft(0)((acc, _) => acc + 1)
  }

  def f(arr:List[Int]):Int = {

    arr.foldLeft(0)({
      (acc, value) =>
        acc + 1
    })
  }

  def main(args:Array[String]):Unit = {
    val list = List(2, 5, 1, 4, 3, 7, 8,9)
    assert(list.length == f2(list))
  }
}

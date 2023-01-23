package hu.hackerrank

object Solution2 {

  def f(arr:List[Int]): Int = {
    arr.foldRight(0){ (act, acc) => if (act % 2 != 0) acc + act else acc + 0
    }
  }

  def main(args:Array[String]):Unit = {
    val input = List(3, 2, 4, 6, 5, 7, 8, 0, 1)
    val output = 16
    println(f(input) == output)
  }
}

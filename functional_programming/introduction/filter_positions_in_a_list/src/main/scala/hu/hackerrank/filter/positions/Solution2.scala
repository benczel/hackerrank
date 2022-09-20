package hu.hackerrank.filter.positions

object Solution2 {

  def f(arr:List[Int]):List[Int] = {
   arr.zipWithIndex filter(i => i._2 % 2 != 0) map (i => i._1)
  }

  def main(args:Array[String]):Unit = {
      val list = List(2,5,3, 4, 6, 7, 9,8)
      println (f(list))
    }
}

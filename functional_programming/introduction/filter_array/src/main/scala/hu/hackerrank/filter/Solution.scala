package hu.hackerrank.filter

object Solution {

  def f(
         delim:Int,
         arr:List[Int]
       ):List[Int] = {
    arr.filter(_.<(delim))
  }

  def main(args:Array[String]):Unit = {
    val x = 3
    val list = List(10, 9, 8, 2, 7, 5, 1, 3, 0)
    println (f(x, list))
  }
}

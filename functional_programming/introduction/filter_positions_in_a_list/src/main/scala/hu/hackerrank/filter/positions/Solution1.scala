package hu.hackerrank.filter.positions

import scala.collection.mutable.ListBuffer

object Solution1 {

  def f(arr:List[Int]):List[Int] = {
    val indexList = (0 to arr.length-1).toList
    val filteredList:List[Int] = indexList filter (i => (i % 2 ) != 0)
    val lb = new ListBuffer[Int]
    filteredList foreach(i => lb.addOne(arr(i)))
    lb.toList
  }

  def main(args:Array[String]):Unit = {
    val list = List(2,5,3, 4, 6, 7, 9,8)
    println (f(list))
  }
}

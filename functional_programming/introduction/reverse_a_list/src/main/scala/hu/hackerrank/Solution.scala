package hu.hackerrank

import scala.collection.mutable.ListBuffer

object Solution{

  def f(arr:List[Int]):List[Int] = {
    var result:List[Int] = Nil
    var tmp = arr

    while (!tmp.isEmpty){
      result = tmp.head :: result
      tmp = tmp.tail
    }
    result
  }

  def main(args: Array[String]): Unit = {
    val input = List(19, 22, 3, 28, 26, 17, 18, 4, 28, 0)
    val output = f(input)
    println(assert(output == input.reverse))
  }
}

package hu.hackerrank

import scala.io.StdIn.readInt

object Solution {

  def f(num:Int) : List[Int] = {
    (0 to num).toList
  }

  def main(args:Array[String]):Unit = {
    val list = f(readInt)

    val str = s"[${list.mkString(",")}]"

    println(str)
  }
}

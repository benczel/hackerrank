package hu.hackerrank.hello.n

object Solution {

  def main(args:Array[String]):Unit = {
    val n = scala.io.StdIn.readInt()
    (1 to n).foreach(i => println("Hello World"))
  }
}

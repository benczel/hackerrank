package hu.hackerrank.fp.first

object Solution {

  def main(args:Array[String]):Unit = {
    println(io.Source.stdin.getLines().take(2).map(_.toInt).sum)
  }
}

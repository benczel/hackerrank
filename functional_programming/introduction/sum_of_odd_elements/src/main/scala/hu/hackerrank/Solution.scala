package hu.hackerrank

object Solution {

  def f(arr:List[Int]):Int = {
    arr.filter(e => (e % 2) != 0 ).sum
  }
  def main(args:Array[String]): Unit = {
    val input =  List(3,2,4,6,5,7,8,0,1)
    val output = 16
    println(f(input) == output)
  }
}

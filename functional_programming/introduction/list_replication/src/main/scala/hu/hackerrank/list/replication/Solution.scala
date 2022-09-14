package hu.hackerrank.list.replication

object Solution {

  def f(
         num:Int,
         arr:List[Int]
       ):List[Int] = {

    arr.flatMap {List.fill(num)(_)}
  }


  def main(args:Array[String]):Unit = {
    val num = 3
    val list = List(1,2,3,4,5,6)
  }
}

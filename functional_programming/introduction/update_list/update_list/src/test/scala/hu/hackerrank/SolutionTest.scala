package hu.hackerrank

import org.scalatest.BeforeAndAfter
import org.scalatest.funsuite.AnyFunSuite

class SolutionTest extends AnyFunSuite with BeforeAndAfter {

  val solution = new Solution()

  test("hackerrank sample") {
    val input = List(2, -4, 3, -1, 23, -4, -54)
    val output = List(2, 4, 3, 1, 23, 4, 54)
    assert(solution.f(input) == output)
  }

  test("submit test case 1") {
    val input = List(-85, -23, 66, 55, 84, -46, -96, 5, 1, 1, -47, -89)
    val output = List(85, 23, 66, 55, 84, 46, 96, 5, 1, 1, 47, 89)
    assert(solution.f(input) == output)
  }
}
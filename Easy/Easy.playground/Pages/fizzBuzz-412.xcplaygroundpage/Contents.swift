import Foundation
/*
 description: 写一个程序，输出从 1 到 n 数字的字符串表示。
 
 1. 如果 n 是3的倍数，输出“Fizz”；

 2. 如果 n 是5的倍数，输出“Buzz”；

 3.如果 n 同时是3和5的倍数，输出 “FizzBuzz”。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/fizz-buzz
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
func fizzBuzz(_ n: Int) -> [String] {
    var ans:[String] = [String]()

    for i in 1...n {
        if i % 3 == 0, i % 5 == 0 {
            ans.append("FizzBuzz")
        }else if i % 3 == 0 {
            ans.append("Fizz")
        }else if i % 5 == 0 {
            ans.append("Buzz")
        }else{
            ans.append(String(i))
        }
    }
    return ans
    
}

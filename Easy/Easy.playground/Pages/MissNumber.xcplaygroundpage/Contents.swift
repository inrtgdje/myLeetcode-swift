//: [Previous](@previous)

import Foundation
/*
 一个长度为n-1的递增排序数组中的所有数字都是唯一的，并且每个数字都在范围0～n-1之内。在范围0～n-1内的n个数字中有且只有一个数字不在该数组中，请找出这个数字。

 来源：力扣（LeetCode）
 链接：https://leetcode-cn.com/problems/que-shi-de-shu-zi-lcof
 著作权归领扣网络所有。商业转载请联系官方授权，非商业转载请注明出处。
 */
func missingNumber(_ nums: [Int]) -> Int {

    var left = 0, right = nums.count - 1
    while left < right {
        let mid = (left + right) / 2
        if nums[mid] != mid {
            right = mid
        } else {
            left = mid + 1
        }
    }
    
    return (left == nums.count - 1 && nums[left] == left) ? left + 1 : left
}


print(missingNumber([0,1,3]))

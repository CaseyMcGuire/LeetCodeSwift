//
//  Problem0001.swift
//  LeetCodeSwift
//
//  Created by Casey McGuire on 5/25/19.
//  Copyright © 2019 Casey McGuire. All rights reserved.
//

import Foundation

/*
 * Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 *
 * You may assume that each input would have exactly one solution, and you may not use the same element twice.
 */
class Solution {
  func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var numToIndices: [Int: [Int]] = [:]
    for (index, num) in nums.enumerated() {
      var indices = numToIndices[num] ?? []
      indices.append(index);
      numToIndices[num] = indices
    }
    
    for (index, num) in nums.enumerated() {
      let remainder = target - num
      if let indices = numToIndices[remainder] {
        if remainder != num {
          return [index, indices[0]]
        }
        if remainder == num && indices.count > 1 {
          return Array(indices[...1])
        }
      }
    }
    fatalError("Invalid input")
  }
}

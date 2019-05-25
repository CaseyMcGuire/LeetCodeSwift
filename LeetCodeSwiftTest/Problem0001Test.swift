//
//  Problem0001Test.swift
//  LeetCodeSwiftTest
//
//  Created by Casey McGuire on 5/25/19.
//  Copyright © 2019 Casey McGuire. All rights reserved.
//

import XCTest

@testable import LeetCodeSwift

class Problem0001Test: XCTestCase {

  private let solution = Solution()
  
  func testDifferentNumbers() {
    XCTAssertEqual([0,1], solution.twoSum([2, 7, 11, 15], 9))
  }
  
  func testSameNumbers() {
    XCTAssertEqual([0,1], solution.twoSum([3,3], 6))
  }
}

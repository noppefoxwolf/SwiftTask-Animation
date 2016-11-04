//
//  Operator.swift
//  Pods
//
//  Created by Tomoya Hirano on 2016/11/04.
//
//

import UIKit
import SwiftTask

precedencegroup Base {
  associativity: left
  lowerThan: AdditionPrecedence
}
infix operator +> : Base

@discardableResult
public func +> <T: AnimationTask>(left: T, right: T) -> AnimationTask {
  return left.resumeSelf().then { _ -> AnimationTask in
    return right.resumeSelf()
  }
}

extension Task {
  func resumeSelf() -> Task {
    resume()
    return self
  }
}

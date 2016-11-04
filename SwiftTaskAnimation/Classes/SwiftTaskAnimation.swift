//
//  SwiftTaskAnimation.swift
//  Pods
//
//  Created by Tomoya Hirano on 2016/11/04.
//
//

import UIKit
import SwiftTask

public typealias AnimationTask = Task<Progress, Bool, Error?>
public extension UIView {
  public class func animateTask(with duration: TimeInterval,
                              delay: TimeInterval? = nil,
                              usingSpringWithDamping: CGFloat? = nil,
                              initialSpringVelocity: CGFloat? = nil,
                              options: UIViewAnimationOptions? = nil,
                              animations: (() -> Void)?,
                              completion: ((Bool) -> Void)? = nil) -> AnimationTask {
    
    return AnimationTask(paused: true) { progress, fulfill, reject, configure in
      if let usingSpringWithDamping = usingSpringWithDamping, let initialSpringVelocity = initialSpringVelocity {
        UIView.animate(withDuration: duration, delay: delay ?? 0.0, usingSpringWithDamping: usingSpringWithDamping, initialSpringVelocity: initialSpringVelocity, options: options ?? [], animations: { () -> Void in
          animations?()
        }, completion: { finish in
          completion?(finish)
          if finish {
            fulfill(finish)
          } else {
            reject(nil)
          }
        })
      } else {
        UIView.animate(withDuration: duration, delay: delay ?? 0.0, options: options ?? [], animations: { () -> Void in
          animations?()
        }, completion: { finish in
          completion?(finish)
          if finish {
            fulfill(finish)
          } else {
            reject(nil)
          }
        })
      }
    }
  }
}

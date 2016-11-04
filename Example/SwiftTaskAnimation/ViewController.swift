//
//  ViewController.swift
//  SwiftTaskAnimation
//
//  Created by Tomoya Hirano on 11/04/2016.
//  Copyright (c) 2016 Tomoya Hirano. All rights reserved.
//

import UIKit
import SwiftTaskAnimation

final class ViewController: UIViewController {
  override func viewDidLoad() {
    super.viewDidLoad()
    
    let v = UIView()
    v.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
    v.backgroundColor = UIColor.red
    view.addSubview(v)
    
    let moveRight = UIView.animateTask(with: 0.5, delay: 0.0, animations: {
      v.transform = v.transform.translatedBy(x: 100, y: 0)
    })
    let moveDown = UIView.animateTask(with: 0.5, delay: 1.0, animations: {
      v.transform = v.transform.translatedBy(x: 0, y: 100)
    })
    let moveLeft = UIView.animateTask(with: 1.0, delay: 1.0, animations: {
      v.transform = v.transform.translatedBy(x: -100, y: 0)
    })
    let alphaAnimation = UIView.animateTask(with: 0.5, delay: 1.0, animations: {
      v.alpha = 0.5
    })
    let rotateAnimation = UIView.animateTask(with: 0.5, animations: {
      v.backgroundColor = UIColor.blue
    })
    
    //Animation Task
    moveRight +> moveDown +> alphaAnimation +> rotateAnimation
                 moveDown +> moveLeft
  }
}

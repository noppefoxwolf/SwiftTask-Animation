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
    
    let viewAnimation = UIView.animateTask(with: 0.5, delay: 0.0, animations: {
      v.transform = CGAffineTransform(translationX: 100, y: 0)
    })
    let displayAnimation = UIView.animateTask(with: 0.5, delay: 0.2, animations: {
      v.transform = CGAffineTransform(translationX: 100, y: 100)
    })
    let messageAnimation = UIView.animateTask(with: 0.3, delay: 0.2, animations: {
      v.transform = CGAffineTransform(translationX: 200, y: 200)
    })
    
    //Animation Task
    viewAnimation +> displayAnimation +> messageAnimation
  }
}

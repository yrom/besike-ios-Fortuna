//
//  ViewController.swift
//  Fortuna
//
//  Created by yrom on 14-10-17.
//  Copyright (c) 2014年 yrom. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        println("Hacking in Swift, since iOS" + String(8))
        println("controller: \(self)")
        println("view: \(self.view)")
        println("view's frame: \(self.view.frame)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


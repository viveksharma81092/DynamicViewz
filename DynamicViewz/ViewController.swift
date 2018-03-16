//
//  ViewController.swift
//  DynamicViewz
//
//  Created by Vivek Sharma on 17/03/18.
//  Copyright © 2018 Survive inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let dynamicView = DynamicViewz(frame: self.view.bounds)
        
        self.view.addSubview(dynamicView)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


//
//  ViewController.swift
//  ClickCounter
//
//  Created by Minisce, Mark on 2/25/17.
//  Copyright © 2017 Minisce, Mark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    
    //! indicates implicitly unwrapped optional property.
    @IBOutlet var label: UILabel!
    @IBOutlet var label2: UILabel!
    
    //executes after the initial View object is set in memory
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func increment(){
        self.count += 1
        self.label.text = "\(self.count)"
    }

}


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
    var label: UILabel!
    var label2: UILabel!
    
    //executes after the initial View object is set in memory
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //programatically create the view without storyboard. 
        let label = UILabel()
        label.frame = CGRect.init(x: 150, y: 100, width: 100, height: 60)
        label.text = "0"
        self.view.addSubview(label)
        self.label = label
        
        let label2 = UILabel()
        label2.frame = CGRect.init(x: 150, y: 250, width: 100, height: 60)
        label2.text = "0"
        self.view.addSubview(label2)
        self.label2 = label2
        
        
        //button
        let button = UIButton()
        button.frame = CGRect.init(x: 100, y: 350, width: 200, height: 60)
        button.setTitle("Click to increment", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        self.view.addSubview(button)
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        
        let decrementButton = UIButton()
        decrementButton.frame = CGRect.init(x: 200, y: 450, width: 200, height: 60)
        decrementButton.setTitle("Click to decrement", for: .normal)
        decrementButton.setTitleColor(UIColor.red, for: .normal)
        self.view.addSubview(decrementButton)
        decrementButton.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControlEvents.touchUpInside)
        
        //toggle background color on click
        let changeBackgroundButton = UIButton()
        changeBackgroundButton.frame = CGRect.init(x: 100, y: 550, width: 200, height: 60)
        changeBackgroundButton.setTitle("Change view background color", for: .normal)
        changeBackgroundButton.setTitleColor(UIColor.green, for: .normal)
        
        self.view.addSubview(changeBackgroundButton)
        changeBackgroundButton.addTarget(self, action: #selector(ViewController.changeBackgroundColor), for: UIControlEvents.touchUpInside)
        
    }
    
    func incrementCount(){
        //label below is actually an outlet (called outlets on storyboard)
        self.count += 1
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
    }
    
    func decrementCount(){
        self.count -= 1
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
    }
    
    func changeBackgroundColor(){
        if(self.view.backgroundColor == UIColor.white){
            self.view.backgroundColor = UIColor.darkGray
        }else{
            self.view.backgroundColor = UIColor.white
        }
    }

}


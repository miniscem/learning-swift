//
//  ViewController.swift
//  ColorMaker
//
//  Created by Minisce, Mark on 2/26/17.
//  Copyright © 2017 Minisce, Mark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redSwitch: UISwitch!
    @IBOutlet weak var greenSwitch: UISwitch!
    @IBOutlet weak var blueSwitch: UISwitch!
    @IBOutlet weak var colorView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func changeColorComponent(sender: AnyObject){
        let r: CGFloat = self.redSwitch.isOn ? 1 : 0
        let g: CGFloat = self.greenSwitch.isOn ? 1 : 0
        let b: CGFloat = self.blueSwitch.isOn ? 1 : 0
        
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }


}


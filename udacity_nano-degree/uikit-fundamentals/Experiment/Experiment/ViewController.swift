//
//  ViewController.swift
//  Experiment
//
//  Created by Minisce, Mark on 2/26/17.
//  Copyright © 2017 Minisce, Mark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var alertButton: UIButton!
    @IBOutlet weak var activityButton: UIButton!
    @IBOutlet weak var customVcButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //sample image picker controller
    @IBAction func experiment(_ sender: Any) {
        let uiVc = UIImagePickerController()
        
        //present the uiImagePickerController.
        self.present(uiVc, animated: true, completion: nil)
    }
    
    @IBAction func experiment_alert(_ sender: AnyObject){
        let controller = UIAlertController()
        controller.title = "Test Alert"
        controller.message = "This is a test alert message"
        
        let okAction = UIAlertAction(title: "ok", style: UIAlertActionStyle.default, handler: {action in self.dismiss(animated:true, completion: nil)})
        let okAction2 = UIAlertAction(title: "ok", style: UIAlertActionStyle.default, handler: {action in self.dismiss(animated:true, completion: nil)})
        
        controller.addAction(okAction)
        controller.addAction(okAction2)
        self.present(controller, animated: true, completion: nil)
    }
    
    @IBAction func experiment_activity(_ sender: AnyObject){
        let image = UIImage()
        let controller = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        self.present(controller, animated: true, completion: nil)
    }
    
    //making a programatic connection between viewcontrollers
    @IBAction func experiment_customVc(_ sender: AnyObject){
        let customVc = self.storyboard?.instantiateViewController(withIdentifier: "MySecondViewController") as! MySecondViewController
        
        self.present(customVc, animated: true, completion: nil)
        
        
    }

}


//
//  ViewController.swift
//  RoshamboChallenge
//
//  Created by Minisce, Mark on 3/6/17.
//  Copyright © 2017 Minisce, Mark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //code only action
    @IBAction func throwPaper(_ sender: UIButton) {
        var resultsController : ResultsViewController
        
        resultsController = self.storyboard?.instantiateViewController(withIdentifier: "ResultsViewController") as! ResultsViewController
        
        
        resultsController.userPlay = "paper"
        
        while resultsController.computerPlay != "" && resultsController.computerPlay != "paper"{
            resultsController.computerPlay = computerThrow()
        }
        
        
        if(resultsController.computerPlay == "rock"){
            resultsController.resultsLabel.text = "Paper covered rock. You win!"
            resultsController.roundImage.image = #imageLiteral(resourceName: "PaperCoversRock")
        }else if(resultsController.computerPlay == "scissors"){
            resultsController.resultsLabel.text = "Scissors cuts paper. You lose!"
            resultsController.roundImage.image = #imageLiteral(resourceName: "ScissorsCutPaper")
        }
        
        self.present(resultsController, animated: true, completion: nil)
        
    }
    
    func computerThrow() -> String{
        let pcThrow = Int(arc4random_uniform(3) + 1)
        var pcThrowStr : String
        
        switch(pcThrow){
            case 1:
                pcThrowStr = "rock"
            case 2:
                pcThrowStr = "paper"
            case 3:
                pcThrowStr = "scissors"
            default:
                pcThrowStr = "rock"
        }
        
        return pcThrowStr
    }
    
    @IBAction func throwRock(_ sender: UIButton) {
        
        self.performSegue(withIdentifier: "rockSegue", sender: self)
        
    }

}


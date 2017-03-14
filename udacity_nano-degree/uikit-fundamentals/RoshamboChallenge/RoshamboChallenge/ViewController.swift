//
//  ViewController.swift
//  RoshamboChallenge
//
//  Created by Minisce, Mark on 3/6/17.
//  Copyright © 2017 Minisce, Mark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    //MARK: code only action
    @IBAction func throwPaper(_ sender: UIButton) {
        var resultsController : ResultsViewController
        
        resultsController = self.storyboard?.instantiateViewController(withIdentifier: "ResultsViewController") as! ResultsViewController
        resultsController.userChoice = Shape.Paper
        
        present(resultsController, animated: true, completion: nil)
    }
    
    //MARK: segue with code action
    //first, add an identifier with the storyboard
    //second, give segue a storyboard id in the attributes inspector
    @IBAction private func throwRock(sender: UIButton){
        performSegue(withIdentifier: "play", sender: sender)
    }
    
    
    //MARK: segue only action
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "play"{
            let vc = segue.destination as! ResultsViewController
            vc.userChoice = getUserShape(button: sender as! UIButton)
        }
    }
    
    private func getUserShape(button: UIButton) -> Shape{
        let shape = button.title(for: .normal)!
        return Shape(rawValue: shape)!
    }

}


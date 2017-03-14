//
//  ResultsViewController.swift
//  RoshamboChallenge
//
//  Created by Minisce, Mark on 3/6/17.
//  Copyright © 2017 Minisce, Mark. All rights reserved.
//

import UIKit

enum Shape: String {
    
    // represents a play or move
    
    case Rock = "Rock"
    case Paper = "Paper"
    case Scissors = "Scissors"
    
    // this function randomly generates an opponent's play
    static func randomShape() -> Shape {
        let shapes = ["Rock", "Paper", "Scissors"]
        let randomChoice = Int(arc4random_uniform(3))
        return Shape(rawValue: shapes[randomChoice])!
    }
}

class ResultsViewController: UIViewController {
    
    @IBOutlet private weak var resultImage: UIImageView!
    @IBOutlet weak var playAgainButton: UIButton!
    @IBOutlet weak var resultsLabel: UILabel!
    
    var userChoice: Shape!
    private let opponentChoice: Shape = Shape.randomShape()

    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        displayResult()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    private func displayResult() {
        // Ideally, most of this would be handled by a model.
        var imageName: String
        var text: String
        let matchup = "\(userChoice.rawValue) vs. \(opponentChoice.rawValue)"
        
        // Why is an exclamation point necessary? :)
        switch (userChoice!, opponentChoice) {
        case let (user, opponent) where user == opponent:
            text = "\(matchup): it's a tie!"
            imageName = "tie"
        case (.Rock, .Scissors), (.Paper, .Rock), (.Scissors, .Paper):
            text = "You win with \(matchup)!"
            imageName = "\(userChoice.rawValue)-\(opponentChoice.rawValue)"
        default:
            text = "You lose with \(matchup) :(."
            imageName = "\(opponentChoice.rawValue)-\(userChoice.rawValue)"
        }
        
        imageName = imageName.lowercased()
        resultImage.image = UIImage(named: imageName)
        resultsLabel.text = text
    }
    

    @IBAction func playAgain(_ sender: UIButton) {
        //dismiss the view controller
        dismiss(animated: true, completion: nil)
    }
    

}

//
//  ViewController.swift
//  BullsEyes
//
//  Created by ASD Education USA Mac #1 on 18/03/22.
//

import UIKit

class ViewController: UIViewController {
    
@IBOutlet weak var slider: UISlider!
@IBOutlet weak var taskLabel: UILabel!
@IBOutlet weak var tryAgaunLabel: UIButton!
@IBOutlet weak var remainAttemptLabel: UILabel!
@IBOutlet weak var scoreLabel: UILabel!
  
//the number that the player should guess
var guessingNumber : Int = 0

// the whole number of the scores
var score : Int = 0
var attempt: Int = 1
  
//set up in initial values
  
//set up slider
  
override func viewDidLoad(){
super.viewDidLoad()
    
let normalThumbImage = UIImage(named: "SliderThumb-Normal")
let highlightedThumbImage = UIImage(named:"SliderThumb-Highlighted")
slider.setThumbImage(normalThumbImage, for: .normal)
slider.setThumbImage(highlightedThumbImage, for : .highlighted)
setUp()
//do any additional setup after loading the view.
    }
    
@IBAction func didTapSelectButton(_ sender: Any) {
setScore()
changeGuessingNumber()
attempt +=
remainAttemptLabel.text="Round:" + String(attempt)
setUp()
  }
}
@IBAction func didTapTryAgainButton(_ sender: Any) {
setUp()
}

//the game setting
func setUp() {
changeGuessingNumber()
  slider.value=50
  score=0
  scoreLabel.text="Score:" + String(score)
}
    
func updateGuessingNumber(){
guessingNumber = Int.random(in: 1...100)
taskLabel.text = "Try to guess the number: " + String(guessingNumber)
}
//func remainAttempt() {
//attempt += 1
//remainAttemptLabel.text = "Round: \(attempt)"
//}
}


//
//  ViewController.swift
//  RockPaperScissors
//
//  Created by Russell Telen on 2021-01-14.
//  Copyright © 2021 Russ Telen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var p1item: UIImageView!
  @IBOutlet weak var p2item: UIImageView!
  @IBOutlet weak var result: UILabel!
  @IBOutlet weak var p1Button: UIButton!
  @IBOutlet weak var p2Button: UIButton!
  
  // array of rock, paper, scissors
  let itemArray: [UIImage] = [(UIImage(named: "paper")!),(UIImage(named: "rock")!),(UIImage(named: "scissors")!)]
  
  // p1 button
  @IBAction func p1ButtonPressed(_ sender: UIButton) {
    // randomize item(rock, paper scissors)
    if let randomItem = itemArray.randomElement() {
      p1item.image = randomItem
    }
    sender.setTitle("Waiting..", for: .normal);
    sender.isEnabled = false;
    
    if p1Button.isEnabled == false && p2Button.isEnabled == false{
      updateResult()
      
      // reset 1 sec after displaying results
      DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
        self.reset()
      }
    }
  }

  // p2 button
  @IBAction func p2ButtonPressed(_ sender: UIButton) {
    // randomize item(rock, paper scissors)
   if let randomItem = itemArray.randomElement() {
     p2item.image = randomItem
   }
    sender.setTitle("Waiting..", for: .normal)
    sender.isEnabled = false;
    
    if p1Button.isEnabled == false && p2Button.isEnabled == false{
      updateResult()
      // reset 1 sec after displaying results
      DispatchQueue.main.asyncAfter(deadline: .now() + 1.0) {
        self.reset()
      }
    }
  }
  
  // reset back to start
  func reset() {
    p1Button.setTitle( "P1 GO", for: .normal)
    p2Button.setTitle( "P2 GO", for: .normal)
    
    p1Button.isEnabled = true
    p2Button.isEnabled = true
    
    result.text! = "Play Again!"
  }
  
  // update results
  func updateResult() {
    if
       (p1item.image! == (UIImage(named: "paper")) && p2item.image! == (UIImage(named: "rock"))) ||
       (p1item.image! == (UIImage(named: "rock")) && p2item.image! == (UIImage(named: "scissors"))) ||
       (p1item.image! == (UIImage(named: "scissors")) && p2item.image! == (UIImage(named: "paper"))) {
         result.text = "Player 1 Wins!"
    } else if
      (p2item.image! == (UIImage(named: "paper")) && p1item.image! == (UIImage(named: "rock"))) ||
      (p2item.image! == (UIImage(named: "rock")) && p1item.image! == (UIImage(named: "scissors"))) ||
      (p2item.image! == (UIImage(named: "scissors")) && p1item.image! == (UIImage(named: "paper"))) {
         result.text = "Player 2 Wins!"
    } else {
         result.text = "Its a tie!"
    }
  }
  

  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }
}



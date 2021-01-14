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
  
  // array of rock, paper, scissors
  let itemArray: [UIImage] = [(UIImage(named: "paper")!),(UIImage(named: "rock")!),(UIImage(named: "scissors")!)]
  
  // p1 button
  @IBAction func p1ButtonPressed(_ sender: UIButton) {
    // randomize item(rock, paper scissors)
    if let randomItem = itemArray.randomElement() {
      p1item.image = randomItem
    }
    
    // update result
    updateResult()
  }
  
  // p2 button
  @IBAction func p2ButtonPressed(_ sender: UIButton) {
    // randomize item(rock, paper scissors)
   if let randomItem = itemArray.randomElement() {
     p2item.image = randomItem
   }
    
    // update result
    updateResult()
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



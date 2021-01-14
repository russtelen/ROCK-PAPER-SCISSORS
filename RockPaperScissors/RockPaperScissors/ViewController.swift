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
  
  @IBAction func p1ButtonPressed(_ sender: UIButton) {
    print("p1 button pressed")
  }
  
  
  @IBAction func p2ButtonPressed(_ sender: UIButton) {
   print("p2 button pressed")
  }
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view.
  }


}


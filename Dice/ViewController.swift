//
//  ViewController.swift
//  Dice
//
//  Created by Abdul Hakim on 1/6/18.
//  Copyright © 2018 Abdul Hakim Shanavas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    var randomDiceNumber1 : Int = 0
    var randomDiceNumber2 : Int = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeDiceImages()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func rollDice(_ sender: Any) {
        changeDiceImages()
    }
    
    func changeDiceImages(){
        randomDiceNumber1 = Int(arc4random_uniform(6))
        randomDiceNumber2 = Int(arc4random_uniform(6))
        
        diceImageView1.image = UIImage(named : "dice\(randomDiceNumber1+1)")
        diceImageView2.image = UIImage(named : "dice\(randomDiceNumber2+1)")
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        changeDiceImages()
    }
}


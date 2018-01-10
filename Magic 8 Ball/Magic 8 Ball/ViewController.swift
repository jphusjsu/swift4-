//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by WilliamH on 1/4/18.
//  Copyright © 2018 WilliamH. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var ballImage: UIImageView!
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func askButtonPressed(_ sender: UIButton) {
        updateImages()
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateImages()
    }
    
    func updateImages() {
        randomBallNumber = Int(arc4random_uniform(5))
        ballImage.image = UIImage(named: ballArray[randomBallNumber])
    }
}


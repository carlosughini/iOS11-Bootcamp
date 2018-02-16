//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Carlos ughini on 29/12/17.
//  Copyright © 2017 Carlos ughini. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomNumber = 0
    
    let ballArray = ["ball1","ball2","ball3","ball4","ball5"]

    @IBOutlet weak var imageBall: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newBallImage()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func askButtonPressed(_ sender: Any) {
        
        newBallImage()
        
    }
    
    func newBallImage() {
        
        randomNumber = Int(arc4random_uniform(5))
        
        imageBall.image = UIImage(named: ballArray[randomNumber])
        
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        
        newBallImage()
        
    }


}


//
//  ViewController.swift
//  TickTackToe
//
//  Created by J on 7/03/2018.
//  Copyright © 2018 J. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var tttArr: [Int] = [0, 1, 2,
                         3, 4, 5,
                         6, 7, 8]
    
    
    @IBOutlet var tttButtons: [UIButton]!
    
    @IBOutlet weak var winnerLabel: UILabel!
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
    }
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


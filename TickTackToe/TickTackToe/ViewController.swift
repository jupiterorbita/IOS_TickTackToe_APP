//
//  ViewController.swift
//  TickTackToe
//
//  Created by J on 7/03/2018.
//  Copyright © 2018 J. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var gameover = false
    var turn = 1
    var arr: [Int] = [0, 0, 0,
                      0, 0, 0,
                      0, 0, 0]
    var winarr = [
    [0,1,2],
    [3,4,5],
    [6,7,8],
    [0,3,6],
    [1,4,7],
    [2,5,8],
    [0,4,8],
    [2,4,6]
    ]
//
//    var tttArr: [String] = ["A", "A", "A",
//                            "A", "A", "A",
//                            "A", "A", "A"]
//
    
    
//    var player1 = "blue"
//    var player2 = "red"
    
    
    @IBOutlet var tttButtons: [UIButton]!
    
    @IBOutlet weak var winnerLabel: UILabel!
    
    @IBAction func resetButtonPressed(_ sender: UIButton) {
        for i in 0..<arr.count {
            arr[i] = 0
            tttButtons[i].backgroundColor = UIColor.white
        }
        winnerLabel.text = "play again!"
    }
    
    // ========= clicking all buttons ACTION ==========
    @IBAction func btnClicked(_ sender: UIButton) {
//        print("\n # # # clicked a BTN! =>", tttButtons)
//        print("\n sender.tag =>", sender.tag)
        if turn == 1 && arr[sender.tag] == 0 && gameover == false {
            sender.backgroundColor = UIColor.red
            turn = 2
            arr[sender.tag] = 1
        }
        else if turn == 2 && arr[sender.tag] == 0 && gameover == false{
            sender.backgroundColor = UIColor.blue
            turn = 1
            arr[sender.tag] = 2
        }
        print(arr)
        for i in 1...2 {
            for option in winarr {
                if arr[option[0]] == i && arr[option[1]] == i && arr[option[2]] == i {
                    print("Player \(i) wins!")
                    winnerLabel.text = "Player \(i) wins!"
                    gameover = true
                }
            }
        }
    }
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("tttButtons", tttButtons)
        for btn in tttButtons {
            print("BTN.tag =>",btn.tag)
        }
        // print("tttButtons ->", tttButtons)
        // print("====")

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


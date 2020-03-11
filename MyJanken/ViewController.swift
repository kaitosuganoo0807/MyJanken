//
//  ViewController.swift
//  MyJanken
//
//  Created by 菅野魁斗 on 2020/03/09.
//  Copyright © 2020 kaito.sugano. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var answerImageView: UIImageView!
    
    @IBOutlet weak var answerLavel: UILabel!
    
    // じゃんけん（数字）
    var answerNumber = 0
    
    @IBAction func shuffleAction(_ sender: Any) {
        
        // 新しいじゃんけんの結果を一時的に格納する変数を設ける
        var newAnswerNumber = 0
        
        // ランダムに結果を出すが、前回の結果と異なる場合のみ採用
        // repertは繰り返しを意味する
        
        repeat {
            
            // 0,1,2の数値をランダムに算出（乱数）
            newAnswerNumber = Int.random(in: 0..<3)
            
            // 全開と同じ結果の時は、再度、ランダムに数値を出す
            // 異なる結果の時は、repeatを設ける
        } while answerNumber == newAnswerNumber
            
        // 新しいじゃんけんの結果を格納
        answerNumber = newAnswerNumber
        
        if answerNumber == 0 {
            answerLavel.text = "グー"
            answerImageView.image = UIImage(named: "gu")
            
        } else if answerNumber == 1 {
            answerLavel.text = "チョキ"
            answerImageView.image = UIImage(named: "choki")
            
        } else if answerNumber == 2 {
            
            answerLavel.text = "パー"
            answerImageView.image = UIImage(named: "pa")
        }
        
    }
    
}


//
//  ViewController.swift
//  SwiftPractice2
//
//  Created by Yeongyun Jeong on 2021/06/15.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textFields: [UITextField]!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClicked(_ sender: Any) {
        var i = 0
        
        for textField in textFields {
            if i % 2 == 0 {
                textField.text = "홀수번째만 텍스트가 들어갑니다!"
            }
            
            i += 1
        }
        
    }
    
}


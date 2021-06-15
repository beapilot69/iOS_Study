//
//  ViewController.swift
//  SwiftPractice1
//
//  Created by Yeongyun Jeong on 2021/06/15.
// 카드 뒤집기 - 버튼과 스위치

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var OnOffSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    var isBackSide = true
    
    
    @IBAction func ButtonClicked(_ sender: Any) {
        UIView.transition(with: imageView, duration: 0.6, options: .transitionFlipFromLeft) {
            //어떻게 애니메이션이 되었으면 좋겠는지 코드
            if self.isBackSide {
                self.imageView.image = UIImage(named: "ace")
            }
            else {
                self.imageView.image = UIImage(named: "poker")
            }
        } completion: { animated in
            //애니메이션 끝나고 처리해야할 것 코드
            self.isBackSide = !self.isBackSide
        }
    }

    
    @IBAction func SwitchClicked(_ sender: Any) {
        UIView.transition(with: imageView, duration: 0.5, options: .transitionFlipFromLeft) {
            if self.OnOffSwitch.isOn {
                self.imageView.image = UIImage(named: "ace")
            }
            else {
                self.imageView.image = UIImage(named: "poker")
            }
        } completion: { animated in
        }
    }
}


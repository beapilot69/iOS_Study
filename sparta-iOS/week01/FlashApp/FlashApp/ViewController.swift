//
//  ViewController.swift
//  FlashApp
//
//  Created by Yeongyun Jeong on 2021/06/07.
//

import UIKit

class ViewController: UIViewController {
// 왜 버튼은 아래쪽, 라벨은 위쪽에 넣어줬어여? ->  속성이 달라서 그렇다. IBOutlet은 그냥 연결만, IBAction은 기능이 들어감. 자동으로 위에 집어넣으면 outlet으로, 아래에 집어넣으면 action으로 초기값 설정돼있음
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonDidClick(_ sender: Any) {
        label.text = "스파르타!"
    }
    
}


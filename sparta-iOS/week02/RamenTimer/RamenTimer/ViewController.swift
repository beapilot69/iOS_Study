//
//  ViewController.swift
//  RamenTimer
//
//  Created by Yeongyun Jeong on 2021/06/15.
//

import UIKit

class ViewController: UIViewController {

    
    /* 추가할 기능

    1. 3,4,5분 선택 기능 (선택과 동시에 라벨 update)
    2. "타이머 종료하기"를 누르면 라벨 초기화
    3. 10초 남으면 라벨 흔들리는?? 기능    */
     
    @IBOutlet weak var timerLabel: UILabel!
    @IBOutlet weak var timerButton: UIButton!
    @IBOutlet weak var segment: UISegmentedControl!
    
    var secondsLeft: Int = 180
    var timer: Timer? //타이머가 있는지 없는지 잘 모르기떄문에 ? 로 선언. 옵셔널!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        timerButton.layer.cornerRadius = 10
        
        self.secondsLeft = 180
        self.updateTimerLabel()
    }

    // 타이머 종료 함수
    func resetTimer() {
        timer?.invalidate() //지금 켜져있는 것을 꺼주세요
        timer = nil // 지워주세요
        timerButton.setTitle("타이머 시작하기", for: .normal)
        
        // 초기값으로 바꿔주도록 함
        if segment.selectedSegmentIndex == 0 {
            self.secondsLeft = 180
        }
        else if segment.selectedSegmentIndex == 1 {
            self.secondsLeft = 240
        }
        else if segment.selectedSegmentIndex == 2 {
            self.secondsLeft = 300
        }
        else {
            self.secondsLeft = 13 //test 용
        }
        self.updateTimerLabel()
    }
    
    func updateTimerLabel() {
        var minutes = self.secondsLeft / 60
        var seconds = self.secondsLeft % 60
        
        if self.secondsLeft < 10 {
            self.timerLabel.textColor = UIColor.red
        }
        else {
            self.timerLabel.textColor = UIColor.black
        }
        
        
        UIView.transition(with: self.timerLabel, duration: 0.3, options: .transitionFlipFromBottom) {
            if self.secondsLeft > 0 {
                //self.timerLabel.text = "\(minutes):\(seconds)" => xx:xx 형식이 아니라서 보기가 불편해
                /* 문자열 기본틀 지정 */
                self.timerLabel.text = String(format: "%02d:%02d", minutes, seconds) //02 : 두 자리를 의미, d : digit 10진수를 의미
            }
            else {
                self.timerLabel.text = "완료!"
            }
        } completion: { animated in
            
        }
    }
    
    @IBAction func segmentValueChanged(_ sender: Any) {
        if segment.selectedSegmentIndex == 0 {
            self.secondsLeft = 180
        }
        else if segment.selectedSegmentIndex == 1 {
            self.secondsLeft = 240
        }
        else if segment.selectedSegmentIndex == 2 {
            self.secondsLeft = 300
        }
        else {
            self.secondsLeft = 13
        }
        self.updateTimerLabel()
        return
    }
    
    
    @IBAction func timerButtonClicked(_ sender: Any) {
        if timer != nil {  /// 타이머가 비어있다면(정지상태라면?)
            resetTimer()
            return
        }
        
        self.timerButton.setTitle("타이머 종료하기", for: .normal)
        //self.secondsLeft = 180
        self.updateTimerLabel()
        
        ///   /// scheduledTimer 에는 눈에 보이지 않는 반환형이 존재
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { (t) in
            self.secondsLeft -= 1
            self.updateTimerLabel()
            
            if self.secondsLeft == 0 {
                self.resetTimer()
            }
        }
    }
}

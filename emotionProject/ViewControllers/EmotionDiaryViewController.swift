//
//  EmotionDiaryViewController.swift
//  emotionProject
//
//  Created by 양승혜 on 5/17/24.
//

import UIKit

class EmotionDiaryViewController: UIViewController {
    
    @IBOutlet var navigationBarButton: UIBarButtonItem!
    @IBOutlet var navigationItemText: UINavigationItem!
    
    // OutletCollection 사용
    @IBOutlet var labelList: [UILabel]!
    
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    @IBOutlet var button4: UIButton!
    @IBOutlet var button5: UIButton!
    @IBOutlet var button6: UIButton!
    @IBOutlet var button7: UIButton!
    @IBOutlet var button8: UIButton!
    @IBOutlet var button9: UIButton!
    
    @IBOutlet var label1: UILabel!
    @IBOutlet var label2: UILabel!
    @IBOutlet var label3: UILabel!
    @IBOutlet var label4: UILabel!
    @IBOutlet var label5: UILabel!
    @IBOutlet var label6: UILabel!
    @IBOutlet var label7: UILabel!
    @IBOutlet var label8: UILabel!
    @IBOutlet var label9: UILabel!
    
    let emotions = ["행복해", "좋아해", "사랑해", "화를내", "당황해", "막막해", "곤란해", "우울해", "억울해"]
    
    var emotionsDict : [String : Int] = ["행복해": 0, "좋아해": 0, "사랑해": 0, "화를내": 0, "당황해": 0, "막막해": 0, "곤란해": 0, "우울해": 0, "억울해": 0]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBarButtonUI()
        navigationBarItemUI()
        labelUI()
        buttonUI()
    }
    
    // 버튼 클릭하는 로직 리팩토링 - sender.tag 이용
    @IBAction func emotionButtonTapped(_ sender: UIButton) {
        emotionsDict[emotions[sender.tag]]! += 1
        labelList[sender.tag].text = "\(emotions[sender.tag])  \(emotionsDict[emotions[sender.tag]]!)"
    }
    
    // navigation bar button
    private func navigationBarButtonUI() {
        navigationBarButton.image = UIImage(systemName: "list.dash")
        navigationBarButton.tintColor = .black
    }
    
    // navigation bar item title
    private func navigationBarItemUI() {
        navigationItemText.title = "감정 다이어리"
    }
    
    // 버튼에 이미지 넣기
    private func buttonLogic(slime: String, emotionButton: UIButton!) {
        emotionButton.setImage(UIImage(named: slime), for: .normal)
    }
    
    private func buttonUI() {
        let slimes =  ["slime1", "slime2", "slime3", "slime4", "slime5", "slime6", "slime7", "slime8", "slime9"]
        
        let emotionButtons = [button1, button2, button3, button4, button5, button6, button7, button8, button9]
        
        for index in slimes.indices {
            buttonLogic(slime: slimes[index], emotionButton: emotionButtons[index])
        }
    }
    
    // 라벨에 내용 넣기
    private func labelLogic(emotion: String, emotionLabel: UILabel!) {
        emotionLabel.text = "\(emotion) \(emotionsDict[emotion]!)"
        emotionLabel.textAlignment = .center
    }
    
    private func labelUI() {
        for index in labelList.indices {
            labelLogic(emotion: emotions[index], emotionLabel: labelList[index])
        }
    }
}

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
    
    @IBOutlet var imageView1: UIImageView!
    @IBOutlet var imageView2: UIImageView!
    @IBOutlet var imageView3: UIImageView!
    @IBOutlet var imageView4: UIImageView!
    @IBOutlet var imageView5: UIImageView!
    @IBOutlet var imageView6: UIImageView!
    @IBOutlet var imageView7: UIImageView!
    @IBOutlet var imageView8: UIImageView!
    @IBOutlet var imageView9: UIImageView!
    
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
        slimeImageViewLogic()
        labelLogic()
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
    
    private func emotionImageViewUI(_ slime: String, _ emotionImageView: UIImageView!) {
        emotionImageView.image = UIImage(named: slime)
    }
    
    private func slimeImageViewLogic() {
        let slimes = ["slime1", "slime2", "slime3", "slime4", "slime5", "slime6", "slime7", "slime8", "slime9"]
        let emotionImageViews = [imageView1, imageView2, imageView3, imageView4, imageView5, imageView6, imageView7, imageView8, imageView9]
        for index in slimes.indices {
            emotionImageViewUI(slimes[index], emotionImageViews[index])
        }
    }
    
    private func labelUI(_ emotion: String, _ emotionLabel: UILabel!) {
        emotionLabel.text = "\(emotion) \(emotionsDict[emotion]!)"
        emotionLabel.textAlignment = .center
    }
    
    private func labelLogic() {
        let emotionLabels = [label1, label2, label3, label4, label5, label6, label7, label8, label9]
        for index in emotions.indices {
            labelUI(emotions[index], emotionLabels[index])
        }
    }
    
    // 버튼 눌릴때 로직(숫자 +1)
    @IBAction func happyButtonTapped(_ sender: UIButton) {
        let state1 = "행복해"
        emotionsDict[state1]! += 1
        label1.text = "\(state1) \(emotionsDict[state1]!)"
    }
    
    @IBAction func likeButtonTapped(_ sender: UIButton) {
        let state2 = "좋아해"
        emotionsDict[state2]! += 1
        label2.text = "\(state2) \(emotionsDict[state2]!)"
    }
    
    @IBAction func loveButtonTapped(_ sender: UIButton) {
        let state3 = "사랑해"
        emotionsDict[state3]! += 1
        label3.text = "\(state3) \(emotionsDict[state3]!)"
    }
    
    
    @IBAction func angryButtonTapped(_ sender: UIButton) {
        let state4 = "화를내"
        emotionsDict[state4]! += 1
        label4.text = "\(state4) \(emotionsDict[state4]!)"
    }
    
    @IBAction func embarrassedButtonTapped(_ sender: UIButton) {
        let state5 = "당황해"
        emotionsDict[state5]! += 1
        label5.text = "\(state5) \(emotionsDict[state5]!)"
    }
    
    @IBAction func hopelessButtonTapped(_ sender: UIButton) {
        let state6 = "막막해"
        emotionsDict[state6]! += 1
        label6.text = "\(state6) \(emotionsDict[state6]!)"
    }
    
    @IBAction func challengingButtonTapped(_ sender: UIButton) {
        let state7 = "곤란해"
        emotionsDict[state7]! += 1
        label7.text = "\(state7) \(emotionsDict[state7]!)"
    }
    
    @IBAction func depressedButtonTapped(_ sender: UIButton) {
        let state8 = "우울해"
        emotionsDict[state8]! += 1
        label8.text = "\(state8) \(emotionsDict[state8]!)"
    }
    
    @IBAction func unfairButtonTapped(_ sender: UIButton) {
        let state9 = "억울해"
        emotionsDict[state9]! += 1
        label9.text = "\(state9) \(emotionsDict[state9]!)"
    }
}

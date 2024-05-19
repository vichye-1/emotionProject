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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationBarButtonUI()
        navigationBarItemUI()
        slimeButtonLogic()
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
    
    private func emotionButtonUI(_ slime: String, _ imageButton: UIButton!) {
        imageButton.setImage(UIImage(named: slime), for: .normal)
        imageButton.contentVerticalAlignment = .fill
        imageButton.contentHorizontalAlignment = .fill
        
    }
    
    private func slimeButtonLogic() {
        let slimes = ["slime1", "slime2", "slime3", "slime4", "slime5", "slime6", "slime7", "slime8", "slime9"]
        let imageButtons = [button1, button2, button3, button4, button5, button6, button7, button8, button9]
        for index in slimes.indices {
            emotionButtonUI(slimes[index], imageButtons[index])
        }
    }
    
    private func labelUI(_ emotion: String, _ emotionLabel: UILabel!) {
        emotionLabel.text = emotion
        emotionLabel.textAlignment = .center
    }
    
    private func labelLogic() {
        let emotions = ["행복해", "좋아해", "사랑해", "화를내", "당황해", "막막해", "곤란해", "우울해", "억울해"]
        let emotionLabels = [label1, label2, label3, label4, label5, label6, label7, label8, label9]
        for index in emotions.indices {
            labelUI(emotions[index], emotionLabels[index])
        }
    }
}

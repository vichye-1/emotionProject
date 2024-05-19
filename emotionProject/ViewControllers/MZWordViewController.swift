//
//  MZWordViewController.swift
//  emotionProject
//
//  Created by 양승혜 on 5/17/24.
//

import UIKit

class MZWordViewController: UIViewController {

    @IBOutlet var searchBarLabel: UILabel!
    @IBOutlet var searchButton: UIButton!
    @IBOutlet var searchTextField: UITextField!
    @IBOutlet var wordButton1: UIButton!
    @IBOutlet var wordButton2: UIButton!
    @IBOutlet var wordButton3: UIButton!
    @IBOutlet var wordButton4: UIButton!
    @IBOutlet var mainImage: UIImageView!
    @IBOutlet var mainLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBarUI()
        mainImageUI()
        buttonLogics()
        searchWithReturnButton()

    }
    
    // 서치 텍스트 필드
    private func searchBarUI() {
        // 테두리 검게 만들기
        searchBarLabel.layer.borderWidth = 2
        searchBarLabel.layer.borderColor = UIColor.black.cgColor
        
        // 텍스트 필드 경계 없애기
        searchTextField.borderStyle = .none
        
        // 돋보기 이미지 추가
        searchButton.backgroundColor = .black
        searchButton.setImage(UIImage(systemName: "magnifyingglass"), for: .normal)
        searchButton.tintColor = .white
    }
    
    private func buttonUI(_ word: String, _ button: UIButton!) {
        button.setTitle(word, for: .normal)
        button.tintColor = .black
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.black.cgColor
        button.layer.cornerRadius = 10
        }
    
    private func buttonLogics() {
        let buttons = [wordButton1, wordButton2, wordButton3, wordButton4]


        let words = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
        
        
        for index in buttons.indices {
            buttonUI(words[index], buttons[index])
        }
    }
    
    private func mainImageUI() {
        mainImage.image = .background
        mainImage.contentMode = .scaleAspectFill
    }
    
    /* Return 버튼 눌러도 검색되도록 하는 기능
    ❓ return 버튼 누르면 키보드 사라지게 하는 방법
     해결 방법 - stackoverflow 검색 https://stackoverflow.com/questions/26288124/how-do-i-get-the-return-key-to-perform-the-same-action-as-a-button-press-in-swif
     */
    private func searchWithReturnButton() {
        searchTextField.addTarget(self, action: #selector(searchLogic), for: UIControl.Event.primaryActionTriggered)
    }
    

    @IBAction func searchButtonTapped(_ sender: UIButton) {
        
        searchLogic()
    }
    
    
    @objc func searchLogic() {
        let wordDict: [String : String] = ["1": "이건1", "2": "이건2", "3": "이건3", "4": "이건4", "5": "이건5", "6": "이건6", "7": "이건7", "8": "이건8", "9": "이건9", "10": "이건10"]
        mainLabel.text = wordDict[searchTextField.text!] ?? "검색 결과가 없습니다"
        mainLabel.textAlignment = .center
        mainLabel.font = .systemFont(ofSize: 20)
    }
    
    
    
    
}

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
    
    var words = ["kijul", "그 잡채", "재질", "스불재", "드르륵 칵", "갓생", "비담", "추구미", "복복복", "원영적 사고"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBarUI()
        mainImageUI()
        buttonLogics()
        searchWithReturnButton()

    }
    
    // 화면 클릭(탭제스쳐 실행)시 키보드 내려가도록
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
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
        let wordDict: [String : String] = ["kijul": "'기절'이라는 뜻\nex)너무 웃겨서 kijul(기절)", "그 잡채": "'그 자체'의 언어유희", "재질": "~느낌\n너 완전 아이돌 재질이다 = \n너 완전 아이돌 느낌이다", "스불재": "스스로 불러온 재앙의 줄임말", "드르륵 칵": "편의점 야외에 설치된 플라스틱 의자를 지칭하는 단어", "갓생": "'신(GOD) + 인생'이 합쳐진 단어로 '남들보다 열심히 살아가는 모습", "비담": "'비주얼 담당'의 줄임말로 주로 아이돌 멤버 중에서 가장 잘생기거나 예쁜 멤버를 말할 때 사용된다.", "추구미": "'내가 추구하는 이미지'의 줄임말", "복복복": "사랑스럽게 쓰다듬을 때의 의성어\nex) 우리 집 고양이는 너무 귀여워서 하루종일 복복복해주고 싶다.", "원영적 사고": "'오히려 잘됐어'라는 긍정적 사고를 넘어선 초긍정적 사고의 흐름"]
        mainLabel.text = wordDict[searchTextField.text!] ?? "검색 결과가 없습니다"
        mainLabel.textAlignment = .center
        mainLabel.font = .systemFont(ofSize: 20)
        mainLabel.numberOfLines = 0
        
        // 검색 버튼 누르면 랜덤으로 단어 나타나게 함
        words.shuffle()
        wordButton1.setTitle(words[0], for: .normal)
        wordButton2.setTitle(words[1], for: .normal)
        wordButton3.setTitle(words[2], for: .normal)
        wordButton4.setTitle(words[3], for: .normal)
    }
    
}

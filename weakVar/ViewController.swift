//
//  ViewController.swift
//  weakVar
//
//  Created by Dongju Park on 2023/01/27.
//

import UIKit

class ViewController: UIViewController {

    var pushButton : UIButton = {
        
        var pushButton = UIButton()
        pushButton.translatesAutoresizingMaskIntoConstraints = false // constraint를 자동으로 설정하지 않고 수동으로 제약조건을 변경할 수 있다.
        pushButton.setTitle("버튼", for: .normal)
        pushButton.setTitleColor(.black, for: .normal)
        pushButton.titleLabel?.font =  UIFont.boldSystemFont(ofSize: 30)
        pushButton.backgroundColor = .blue
        pushButton.addTarget(self, action: #selector(pressed), for: .touchUpInside)//버튼 클릭시 어떤 함수가 실행될지 선택하는 메소트
        return pushButton
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.addSubview(pushButton)
        
        NSLayoutConstraint.activate([
            pushButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            pushButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            pushButton.widthAnchor.constraint(equalToConstant: 100),
            pushButton.heightAnchor.constraint(equalToConstant: 130),
        ])
    }

    @objc func pressed(_sender: Any) {
        //pushViewController를 활용하여 화면 전환
        //Rootvc를 embed in을 하고 view controler간 연결을 해주어야 한다.
        guard let vc = self.storyboard?.instantiateViewController(withIdentifier: "TimerViewController") else {
                    return
                }
                _ = self.navigationController?.pushViewController(vc, animated: true)
                print("work?")
        
        
    }

}


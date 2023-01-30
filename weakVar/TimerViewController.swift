//
//  TimerViewController.swift
//  weakVar
//
//  Created by Dongju Park on 2023/01/27.
//

import UIKit

class TimerViewController: UIViewController {
    
     var counterLbl: UILabel = {
        var label: UILabel = UILabel()
        label.frame = CGRect(x: 150,y: 150, width: 100, height: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "0"
        return label
    }()
    
    var helloLbl: UILabel = {
        var label: UILabel = UILabel()
        
        label.text = "hello"
        label.frame = CGRect(x: 150,y: 150, width: 100, height: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private var timer = Timer()
    private var count: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(counterLbl)
        view.addSubview(helloLbl)
        
        NSLayoutConstraint.activate([
            
            helloLbl.leadingAnchor.constraint(equalTo: counterLbl.leadingAnchor), // helloLbl을 counterLbl의 leading 기준으로 정렬
            helloLbl.topAnchor.constraint(equalTo: counterLbl.topAnchor,constant: -30),
            helloLbl.widthAnchor.constraint(equalToConstant: 100),
            helloLbl.heightAnchor.constraint(equalToConstant: 130),
            
            counterLbl.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            counterLbl.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            counterLbl.widthAnchor.constraint(equalToConstant: 100),
            counterLbl.heightAnchor.constraint(equalToConstant: 130),
        ])
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: { timer in
                    self.count += 1
                    print("Repeat Count: \(self.count)")
                    self.counterLbl.text = "\(self.count)"
                })
        // Do any additional setup after loading the view.
    }

}

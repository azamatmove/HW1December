//
//  ViewController.swift
//  HW1December
//
//  Created by Azamat Sarinzhiev on 22/12/21.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    private var textOne = UITextField()
    private var button = UIButton()
    
    
    
    override func viewDidLoad() {
            super.viewDidLoad()
           
            view.backgroundColor = .systemRed
            
            view.addSubview(textOne)
            textOne.backgroundColor = .gray
            textOne.snp.makeConstraints {make in
                make.top.equalToSuperview().offset(300)
                make.centerX.equalToSuperview()
                make.height.equalTo(50)
                make.width.equalTo(100)
                
            }

            view.addSubview(button)
                        button.backgroundColor = .systemOrange
                        button.setTitleColor(.systemBlue, for: .normal)
            button.addTarget(nil, action: #selector(buttonTapped(sender:)), for: .touchUpInside)
                        button.snp.makeConstraints {make in
                            make.top.equalTo(textOne.snp.bottom).offset(50)
                            make.centerX.equalToSuperview()
                            make.height.equalTo(100)
                            make.width.equalTo(50)
                        }
                        

            
            
            
        }
        @objc func buttonTapped(sender: UIButton) {
            let controller = ViewControllerTwo()
            controller.labelOne.text = textOne.text
            navigationController?.pushViewController(controller, animated: true)
        }
    
    }

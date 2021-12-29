//
//  ViewControllerTwo.swift
//  HW1December
//
//  Created by Azamat Sarinzhiev on 22/12/21.
//

import Foundation
import SnapKit

class ViewControllerTwo: UIViewController {
    var labelOne = UILabel()
    override func viewDidLoad() {
        labelOne.backgroundColor = .systemCyan
        view.addSubview(labelOne)
        labelOne.snp.makeConstraints {
            make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
            make.height.equalTo(100)
            make.width.equalTo(100)
        }
    }
}

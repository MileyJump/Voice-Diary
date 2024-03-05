//
//  NicName.swift
//  VoiceDiary
//
//  Created by 최민경 on 3/5/24.
//

import Foundation
import UIKit

class NicNameView: UIView {
    
    let nickNameLabel: UILabel = {
        let label = UILabel()
        label.text = "닉네임을 입력해주세요"
        label.textColor = Color.mainColor
        return label
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

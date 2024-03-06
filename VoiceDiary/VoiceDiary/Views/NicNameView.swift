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
        label.font = UIFont(name: "KCC-Ganpan", size: 26)
//        label.backgroundColor = .gray
        return label
    }()
    
    let serveLabel: UILabel = {
        let label = UILabel()
        label.text = "언제든 변경이 가능해요"
        label.textColor = Color.serveLabelColor
        label.font = UIFont(name: "KCC-Ganpan", size: 16)
//        label.backgroundColor = .gray
        return label
    }()
    
    let nickNameTextField: UITextField = {
        let textField = UITextField()
        textField.layer.cornerRadius = 8
        textField.backgroundColor = Color.unTouchedColor
        textField.font = UIFont(name: "KCC-Ganpan", size: 17)
        textField.placeholder = "ex) 김민준바보"
        let attributed = NSAttributedString(string: "ex) 김민준 바보", attributes: [NSAttributedString.Key.foregroundColor: Color.placeholderColor])
        textField.attributedPlaceholder = attributed
        return textField
    }()
    
    let nextButton: UIButton = {
        let button = UIButton()
        button.setTitle("다음", for: .normal)
        button.titleLabel?.font = UIFont(name: "KCC-Ganpan", size: 17)
        button.backgroundColor = Color.unTouchedColor
        button.layer.cornerRadius = 13
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = Color.mainBackgroundcolor
        
        setUpUI()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setUpUI(){
        self.addSubview(nickNameLabel)
        self.addSubview(serveLabel)
        self.addSubview(nickNameTextField)
        self.addSubview(nextButton)
        
        nickNameLabel.snp.makeConstraints { make in
            make.width.equalTo(241)
            make.height.equalTo(36)
            make.top.equalTo(120)
            make.left.equalTo(24)
            make.right.equalTo(-24) //글씨가 잘려서 추가!
        }
        serveLabel.snp.makeConstraints { make in
            make.width.equalTo(152)
            make.height.equalTo(22)
            make.top.equalTo(nickNameLabel.snp.bottom).offset(4)
            make.left.equalTo(24)
            make.right.equalTo(199)
        }
        nickNameTextField.snp.makeConstraints { make in
            make.width.equalTo(335)
            make.height.equalTo(48)
            make.top.equalTo(serveLabel.snp.bottom).offset(24)
            make.left.equalTo(20)
        }
        
        nextButton.snp.makeConstraints { make in
            make.width.equalTo(327)
            make.height.equalTo(56)
//            make.bottom.equalTo(56)
            make.bottom.equalTo(safeAreaLayoutGuide).offset(-22)
            make.left.equalTo(24)
            make.right.equalTo(-24)
        }
    }
    
}

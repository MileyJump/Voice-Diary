//
//  ConnectionView.swift
//  VoiceDiary
//
//  Created by 최민경 on 3/5/24.
//

import Foundation
import UIKit
import SnapKit

final class ConnectionView: UIView {
    
    private let conNectionLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "KCC-Ganpan", size: 26)
        label.text = "음성 메세지를 교환할\n커플을 연결해주세요"
        //        label.textColor = Color.labelColor
        label.textColor = UIColor(hexCode: "#614937")
        label.numberOfLines = 2
        return label
    }()
    
    private let step1Label: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "KCC-Ganpan", size: 16)
        label.text = "STEP 01. 초대 코드 공유"
        label.textColor = UIColor(hexCode: "#7D7266")
        return label
    }()
    
    private let codeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "KCC-Ganpan", size: 30)
        label.textColor = UIColor(hexCode: "#614937")
        label.text = "AB123"
        return label
    }()
    
    let codeCopyButton: UIButton = {
        let button = UIButton()
        button.setTitle("코드 복사하기", for: .normal)
        //        button.titleLabel?.textColor = Color.buttonTittleColor
        button.setTitleColor(UIColor(hexCode: "#604937"), for: .normal)
        button.titleLabel?.font = UIFont(name: "KOTRA HOPE", size: 14)
        button.backgroundColor = UIColor(hexCode: "#E6DAD1")
        button.layer.cornerRadius = 12
        return button
    }()
    
    private let step2Label: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "KCC-Ganpan", size: 16)
        label.textColor = UIColor(hexCode: "#7D7266")
        label.text = "STEP 02. 초대 코드 입력"
        return label
    }()
    
    let codeInPutTextField: UITextField = {
        let textField = UITextField()
        //        let attributed = NSAttributedString(string: "ex) AB123", attributes: [NSAttributedString.Key.foregroundColor: Color.placeholderColor])
        let attributed = NSAttributedString(string: "ex) AB123", attributes: [NSAttributedString.Key.foregroundColor: UIColor(hexCode: "#D5C6B9")])
        textField.attributedPlaceholder = attributed
        //        textField.backgroundColor = Color.unTouchedColor
        textField.backgroundColor = UIColor(hexCode: "#F1EAE4")
        textField.layer.cornerRadius = 8
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 12, height: 0))
        textField.leftViewMode = .always
        textField.font = UIFont(name: "KCC-Ganpan", size: 17)
        return textField
    }()
    
    let upLoadButton: UIButton = {
        let button = UIButton()
        button.setTitle("등록하기", for: .normal)
        //        button.titleLabel?.textColor = Color.buttonTittleColor
        button.setTitleColor(UIColor(hexCode: "#604937"), for: .normal)
        button.titleLabel?.font = UIFont(name: "KOTRA HOPE", size: 14)
        //        button.backgroundColor = Color.buttonColor
        button.backgroundColor = UIColor(hexCode: "#E6DAD1")
        button.layer.cornerRadius = 12
        button.isUserInteractionEnabled = false
        return button
    }()
    
    let conNectLabel: UILabel = {
        let label = UILabel()
        label.text = ""
        label.font = UIFont(name: "KCC-Ganpan", size: 15)
        //        label.textColor = Color.mainColor
        label.textColor = UIColor(hexCode: "#604937")
        return label
    }()
    
    let nextButton: UIButton = {
        let button = UIButton()
        button.setTitle("다음", for: .normal)
        button.titleLabel?.font = UIFont(name: "KCC-Ganpan", size: 17)
        //        button.backgroundColor = Color.unTouchedColor
        button.backgroundColor = UIColor(hexCode: "#F1EAE4")
        button.layer.cornerRadius = 13
        button.isUserInteractionEnabled = false
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
        self.addSubview(conNectionLabel)
        self.addSubview(step1Label)
        self.addSubview(codeLabel)
        self.addSubview(codeCopyButton)
        self.addSubview(step2Label)
        self.addSubview(codeInPutTextField)
        self.addSubview(upLoadButton)
        self.addSubview(nextButton)
        self.addSubview(conNectLabel)
        
        conNectionLabel.snp.makeConstraints { make in
            make.top.equalTo(120)
            make.left.equalTo(24)
            make.right.equalTo(-24)
            make.width.equalTo(224)
            make.height.equalTo(72)
        }
        
        step1Label.snp.makeConstraints { make in
            make.width.equalTo(160)
            make.right.equalTo(-160)
            make.height.equalTo(22)
            make.top.equalTo(conNectionLabel.snp.bottom).offset(32)
            make.left.equalTo(24)
        }
        
        codeLabel.snp.makeConstraints { make in
            make.width.equalTo(86) // 피그마 84글씨 잘림
            make.height.equalTo(41)
            make.top.equalTo(step1Label.snp.bottom).offset(8)
            make.left.equalTo(24)
        }
        
        codeCopyButton.snp.makeConstraints { make in
            make.width.equalTo(80)
            make.height.equalTo(32)
            make.top.equalTo(codeLabel.snp.top).offset(4)
            make.bottom.equalTo(codeLabel.snp.bottom).offset(-5)
            make.left.equalTo(124)
        }
        
        step2Label.snp.makeConstraints { make in
            make.top.equalTo(codeLabel.snp.bottom).offset(32)
            make.left.equalTo(24)
            make.width.equalTo(170) // 161 글씨 잘림
            make.height.equalTo(22)
        }
        
        codeInPutTextField.snp.makeConstraints { make in
            make.top.equalTo(step2Label.snp.bottom).offset(8)
            make.left.equalTo(20)
            make.width.equalTo(257)
            make.height.equalTo(48)
        }
        
        upLoadButton.snp.makeConstraints { make in
            make.top.equalTo(codeInPutTextField.snp.top).offset(8)
            make.bottom.equalTo(codeInPutTextField.snp.bottom).offset(-8)
            make.left.equalTo(codeInPutTextField.snp.right).offset(16)
            make.width.equalTo(58)
            make.height.equalTo(32)
        }
        
        conNectLabel.snp.makeConstraints { make in
            make.top.equalTo(codeInPutTextField.snp.bottom).offset(12)
            make.left.equalTo(24)
            make.width.equalTo(151)
            make.height.equalTo(21)
        }
        
        nextButton.snp.makeConstraints { make in
            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom).offset(-22)
            make.left.equalTo(24)
            make.right.equalTo(-24)
            make.width.equalTo(327)
            make.height.equalTo(56)
        }
    }
}

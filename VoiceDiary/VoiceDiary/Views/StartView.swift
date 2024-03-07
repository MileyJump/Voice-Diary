//
//  StartView.swift
//  VoiceDiary
//
//  Created by 최민경 on 3/6/24.
//

import Foundation
import UIKit

class StartView: UIView {
    
    let startLabel: UILabel = {
        let label = UILabel()
        label.text = "모든 준비가 끝났어요!\n시작해볼까요?"
//        label.textColor = Color.labelColor
        label.textColor = UIColor(hexCode: "#614937")
        label.numberOfLines = 2
        label.font = UIFont(name: "KCC-Ganpan", size: 26)
        return label
    }()
    
    
    let myNickNameLabel: UILabel = {
        let label = UILabel()
        label.text = "하둘셋넷다엿일여홉열하둘"
        label.font = UIFont(name: "KCC-Ganpan", size: 26)
//        label.textColor = Color.mainColor
        label.textColor = UIColor(hexCode: "#604937")
        label.textAlignment = .center
        return label
    }()
    
    let heartImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(systemName: "heart.fill")
//        imageView.tintColor = Color.mainColor
        imageView.tintColor = UIColor(hexCode: "#604937")
        return imageView
    }()
    
    let coupleNickNameLabel: UILabel = {
        let label = UILabel()
        label.text = "123456789101"
        label.font = UIFont(name: "KCC-Ganpan", size: 26)
        label.textAlignment = .center
//        label.textColor = Color.mainColor
        label.textColor = UIColor(hexCode: "#604937")
        return label
    }()
    
    let startButton: UIButton = {
        let button = UIButton()
        button.setTitle("시작하기", for: .normal)
        button.titleLabel?.font = UIFont(name: "KCC-Ganpan", size: 17)
//        button.backgroundColor = Color.mainColor
        button.backgroundColor = UIColor(hexCode: "#604937")
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
    
    func setUpUI() {
        self.addSubview(startLabel)
        self.addSubview(myNickNameLabel)
        self.addSubview(heartImage)
        self.addSubview(coupleNickNameLabel)
        self.addSubview(startButton)
        
        startLabel.snp.makeConstraints { make in
            make.top.equalTo(120)
            make.left.equalTo(24)
            make.right.equalTo(-24) // 글자 잘려서 오른쪽 값 줌
//            make.width.equalTo(233) // 글자 잘림
            make.height.equalTo(72)
        }
        
        myNickNameLabel.snp.makeConstraints { make in
            make.top.equalTo(startLabel.snp.bottom).offset(144)
            make.right.left.equalToSuperview() // 12글자 잘려서 넓이,왼쪽 수정
            make.centerX.equalToSuperview()
            make.height.equalTo(36)
        }
        
        heartImage.snp.makeConstraints { make in
            make.top.equalTo(myNickNameLabel.snp.bottom).offset(8)
            make.width.height.equalTo(52)
            make.centerX.equalToSuperview()
        }
        
        coupleNickNameLabel.snp.makeConstraints { make in
            make.top.equalTo(heartImage.snp.bottom).offset(8)
            make.right.left.equalToSuperview() // 12글자 잘려서 넓이,왼쪽 수정
            make.centerX.equalToSuperview()
            make.height.equalTo(36)
        }
        
        startButton.snp.makeConstraints { make in
            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom).offset(-22)
            make.left.equalTo(24)
            make.right.equalTo(-24)
            make.width.equalTo(327)
            make.height.equalTo(56)
        }
    }
    
}

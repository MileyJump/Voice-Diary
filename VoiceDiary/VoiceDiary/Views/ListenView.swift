//
//  ListenView.swift
//  VoiceDiary
//
//  Created by 최민경 on 3/8/24.
//

import Foundation
import UIKit

class ListenView: UIView {
    
    let giftBoxView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hexCode: "#F5E2E2")
        view.layer.cornerRadius = 11
        return view
    }()
    
    private let giftBoxImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "GiftBox")
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "오늘도 재밌었어"
        label.font = UIFont(name: "KCC-Ganpan", size: 24)
        label.textColor = UIColor(hexCode: "#7D7266")
        return label
    }()
    
    private let nickNameLabel: UILabel = {
        let label = UILabel()
        label.text = "김민준김민톨최해피S2"
        label.font = UIFont(name: "KCC-Ganpan", size: 18)
        label.textColor = UIColor(hexCode: "#AC9F92")
        return label
    }()
    
    let heartButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        button.tintColor = UIColor(hexCode: "#604937").withAlphaComponent(0.3)
        
        return button
    }()
    
    let voiceProgress: UIProgressView = {
        let progress = UIProgressView()
        progress.trackTintColor = UIColor(hexCode: "#F1EAE4")
        progress.progressTintColor = UIColor(hexCode: "#604937")
        return progress
    }()
    
    let currentTimeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "KCC-Ganpan", size: 14)
        label.textColor = UIColor(hexCode: "#AC9F92")
        label.textAlignment = .left
        label.text = "0:00"
        return label
    }()
    
    let endTimeLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "KCC-Ganpan", size: 14)
        label.textColor = UIColor(hexCode: "#AC9F92")
        label.text = "1:52"
        label.textAlignment = .right
        return label
    }()
    
    let playButton: UIButton = {
        let button = UIButton()
        button.tintColor = UIColor(hexCode: "#604937")
        let imageConfiguration = UIImage.SymbolConfiguration(pointSize: 60, weight: .light)
        let image = UIImage(systemName: "play.circle.fill", withConfiguration: imageConfiguration)
        button.setImage(image, for: .normal)
        return button
    
    }()
    
    let replyButton: UIButton = {
        let button = UIButton()
        button.setTitle("답장 녹음하기", for: .normal)
        button.setTitleColor(UIColor(hexCode: "#604937"), for: .normal)
        button.backgroundColor = UIColor(hexCode: "#E6DAD1")
        button.titleLabel?.font = UIFont(name: "KOTRA HOPE", size: 24)
        button.layer.cornerRadius = 12
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
        self.addSubview(giftBoxView)
        self.addSubview(giftBoxImage)
        self.addSubview(titleLabel)
        self.addSubview(nickNameLabel)
        self.addSubview(heartButton)
        self.addSubview(voiceProgress)
        self.addSubview(currentTimeLabel)
        self.addSubview(endTimeLabel)
        self.addSubview(playButton)
        self.addSubview(replyButton)
        
        
        giftBoxView.snp.makeConstraints { make in
            make.top.equalTo(104)
            make.width.height.equalTo(331)
//            make.left.equalTo(32)
            make.centerX.equalToSuperview()
        }
        
        giftBoxImage.snp.makeConstraints { make in
            make.height.equalTo(160)
            make.width.equalTo(154)
            make.top.equalTo(giftBoxView.snp.top).offset(75)
//            make.left.equalTo(giftBoxView.snp.left).offset(78)
            make.centerX.equalTo(giftBoxView)
        }
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(giftBoxView.snp.bottom).offset(32)
            make.width.equalTo(290) // 158 글자 잘림
            make.height.equalTo(33)
            make.left.equalTo(giftBoxView.snp.left)
        }
        
        nickNameLabel.snp.makeConstraints { make in
            make.width.equalTo(185) //64글자 잘림
            make.height.equalTo(25)
            make.left.equalTo(titleLabel.snp.left).offset(2)
            make.top.equalTo(titleLabel.snp.bottom).offset(4)
        }
        
        heartButton.snp.makeConstraints { make in
            make.width.equalTo(22)
            make.height.equalTo(20)
            make.top.equalTo(titleLabel.snp.top).offset(19)
            make.right.equalTo(giftBoxView.snp.right).offset(-5)
        }
        
        voiceProgress.snp.makeConstraints { make in
            make.width.equalTo(311)
            make.height.equalTo(6)
            make.top.equalTo(nickNameLabel.snp.bottom).offset(37)
//            make.left.equalTo(nickNameLabel.snp.left).offset(2)
            make.left.equalTo(giftBoxView.snp.left)
            make.right.equalTo(giftBoxView.snp.right)
        }
        
        currentTimeLabel.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(19)
            make.top.equalTo(voiceProgress.snp.bottom).offset(13)
            make.left.equalTo(voiceProgress.snp.left).offset(2)
        }
        
        endTimeLabel.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(19)
            make.top.equalTo(voiceProgress.snp.bottom).offset(13)
            make.right.equalTo(voiceProgress.snp.right).offset(-2)
        }
        
        // MARK: - top 수정

        playButton.snp.makeConstraints { make in
            make.height.width.equalTo(72)
            make.top.equalTo(currentTimeLabel.snp.bottom).offset(16)
            make.centerX.equalToSuperview()
        }
        
        replyButton.snp.makeConstraints { make in
            make.top.equalTo(playButton.snp.bottom).offset(40)
            make.width.equalTo(129)
            make.height.equalTo(44)
//            make.left.equalTo(123)
            make.centerX.equalToSuperview()
        }
    }
}

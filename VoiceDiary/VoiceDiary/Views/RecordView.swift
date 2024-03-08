//
//  RecordView.swift
//  VoiceDiary
//
//  Created by 최민경 on 3/8/24.
//

import Foundation
import UIKit

class RecordView: UIView {
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "답장 녹음하기"
        label.font = UIFont(name: "KOTRA HOPE", size: 17)
        label.textColor = UIColor(hexCode: "#604937")
        return label
    }()
    
    
    let recordTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "굥톨346님의 메세지"
        label.font = UIFont(name: "KCC-Ganpan", size: 17)
        label.textColor = UIColor(hexCode: "#604937")
        label.backgroundColor = .green
        return label
    }()
    
    let editButton: UIButton = {
        let button = UIButton()
        button.setTitle("제목편집", for: .normal)
        button.titleLabel?.font = UIFont(name: "KCC-Ganpan", size: 14)
        button.setTitleColor(UIColor(hexCode: "#AC9F92"), for: .normal)
        button.backgroundColor = .green
        return button
    }()
    
    let soundWaveView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor(hexCode: "#F4EFE5")
        return view
    }()
    
    let secondLabel: UILabel = {
        let label = UILabel()
        label.text = "0:00"
        label.font = UIFont(name: "KCC-Ganpan", size: 34)
        label.textColor = UIColor(hexCode: "#7D7266")
        return label
    }()
    
    let voiceProgress: UIProgressView = {
        let progress = UIProgressView()
        progress.trackTintColor = UIColor(hexCode: "#F1EAE4")
        progress.progressTintColor = UIColor(hexCode: "#604937")
        return progress
    }()
    
    let resetButton: UIButton = {
        let button = UIButton()
        button.setTitle("리셋하기", for: .normal)
        button.titleLabel?.font = UIFont(name: "KOTRA HOPE", size: 17)
        button.setTitleColor(UIColor(hexCode: "#604937"), for: .normal)
        button.backgroundColor = UIColor(hexCode: "#E6DAD1")
        button.layer.cornerRadius = 12
        return button
    }()
    
    let playButton: UIButton = {
        let button = UIButton()
        button.tintColor = UIColor(hexCode: "#D65454")
        let imageConfiguration = UIImage.SymbolConfiguration(pointSize: 60, weight: .light)
        let image = UIImage(systemName: "play.circle.fill", withConfiguration: imageConfiguration)
        button.setImage(image, for: .normal)
//        button.backgroundColor = UIColor(hexCode: "#D65454")
        return button
    
    }()
    
    let sendButton: UIButton = {
        let button = UIButton()
        button.setTitle("전송하기", for: .normal)
        button.titleLabel?.font = UIFont(name: "KOTRA HOPE", size: 17)
        button.setTitleColor(UIColor(hexCode: "#604937"), for: .normal)
        button.backgroundColor = UIColor(hexCode: "#E6DAD1")
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
        self.addSubview(titleLabel)
        self.addSubview(recordTitleLabel)
        self.addSubview(editButton)
        self.addSubview(soundWaveView)
        self.addSubview(secondLabel)
        self.addSubview(voiceProgress)
        self.addSubview(resetButton)
        self.addSubview(playButton)
        self.addSubview(sendButton)
        
        titleLabel.snp.makeConstraints { make in
            make.top.equalTo(24)
            make.centerX.equalToSuperview()
            make.width.equalTo(77)
            make.height.equalTo(20)
        }
        
        recordTitleLabel.snp.makeConstraints { make in
            make.top.equalTo(80)
            make.height.equalTo(23)
//            make.width.equalTo(200)
            make.left.equalTo(24)
        }
        
        editButton.snp.makeConstraints { make in
            make.top.equalTo(recordTitleLabel.snp.top).offset(3)
            make.bottom.equalTo(recordTitleLabel.snp.bottom).offset(-3)
            make.left.equalTo(recordTitleLabel.snp.right).offset(8)
//            make.height.equalTo(17)
//            make.width.equalTo(51)
        }
        
        soundWaveView.snp.makeConstraints { make in
            make.top.equalTo(recordTitleLabel.snp.bottom).offset(12)
            make.left.right.equalToSuperview()
            make.height.equalTo(136)
        }
        
        secondLabel.snp.makeConstraints { make in
            make.top.equalTo(soundWaveView.snp.bottom).offset(16)
//            make.left.right.equalToSuperview()
            make.centerX.equalToSuperview()
            make.height.equalTo(47)
//            make.width.equalTo(80)
        }
        
        resetButton.snp.makeConstraints { make in
            make.height.equalTo(36)
            make.width.equalTo(71)
            make.top.equalTo(soundWaveView.snp.bottom).offset(103)
            make.left.equalTo(24)
        }
        
        playButton.snp.makeConstraints { make in
            make.top.equalTo(soundWaveView.snp.bottom).offset(83)
            make.centerX.equalToSuperview()
            make.height.width.equalTo(72)
        }
        
        sendButton.snp.makeConstraints { make in
            make.top.equalTo(resetButton.snp.top)
            make.height.equalTo(36)
            make.width.equalTo(71)
            make.right.equalTo(-24)
        }
    }
    
    
}

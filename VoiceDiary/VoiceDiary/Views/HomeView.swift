//
//  HomeView.swift
//  VoiceDiary
//
//  Created by 최민경 on 3/8/24.
//

import Foundation
import UIKit

final class HomeView: UIView {
    
    private let giftBoxImage: UIImageView = {
        let imageView = UIImageView()
        //        imageView.image = UIImage(named: "")
        imageView.backgroundColor = .gray
        return imageView
    }()
    
    private let arriveLabel: UILabel = {
        let label = UILabel()
        label.text = "음성 메세지가\n도착했어요!"
        label.font = UIFont(name: "KCC-Ganpan", size: 26)
        label.numberOfLines = 2
        label.textColor = UIColor(hexCode: "#614937")
        label.textAlignment = .center
        return label
    }()
    
    let listenButton: UIButton = {
        let button = UIButton()
        button.setTitle("메세지 듣기", for: .normal)
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
        self.addSubview(giftBoxImage)
        self.addSubview(arriveLabel)
        self.addSubview(listenButton)
        
        giftBoxImage.snp.makeConstraints { make in
            make.width.equalTo(154)
            make.height.equalTo(160)
            make.top.equalTo(225)
            make.centerX.equalToSuperview()
            //            make.left.equalTo(110)
            //            make.right.equalTo(-110)
        }
        
        arriveLabel.snp.makeConstraints { make in
            //            make.width.equalTo(147) // 글자 잘림
            make.height.equalTo(72)
            make.top.equalTo(giftBoxImage.snp.bottom).offset(12)
            make.centerX.equalToSuperview()
            make.left.equalToSuperview()
            make.right.equalToSuperview()
        }
        
        listenButton.snp.makeConstraints { make in
            make.top.equalTo(arriveLabel.snp.bottom).offset(20)
            make.centerX.equalToSuperview()
            make.width.equalTo(109)
            make.height.equalTo(44)
        }
        
    }
}

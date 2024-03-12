//
//  MessageWait.swift
//  VoiceDiary
//
//  Created by 최민경 on 3/11/24.
//

import Foundation
import UIKit

final class MessageWaitView: UIView {
    
    private let benchImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "Bench")
        imageView.backgroundColor = .clear
        return imageView
    }()
    
    private let waitLabel: UILabel = {
        let label = UILabel()
        label.text = "상대방의 메시지를\n기다리고있어요!"
        label.font = UIFont(name: "KCC-Ganpan", size: 26)
        label.numberOfLines = 2
        label.textColor = UIColor(hexCode: "#614937")
        label.textAlignment = .center
        return label
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
        self.addSubview(benchImage)
        self.addSubview(waitLabel)
        
        benchImage.snp.makeConstraints { make in
            make.width.equalTo(212)
            make.height.equalTo(126)
            make.top.equalTo(263)
            make.centerX.equalToSuperview()
            //            make.left.equalTo(110)
            //            make.right.equalTo(-110)
        }
        
        waitLabel.snp.makeConstraints { make in
            //            make.width.equalTo(147) // 글자 잘림
            make.height.equalTo(72)
            make.top.equalTo(benchImage.snp.bottom).offset(8)
            make.centerX.equalToSuperview()
            make.left.equalToSuperview()
            make.right.equalToSuperview()
        }
    }
}


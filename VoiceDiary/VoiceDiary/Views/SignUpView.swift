//
//  SignUpView.swift
//  VoiceDiary
//
//  Created by 최민경 on 3/5/24.
//

import UIKit
import SnapKit

class SignUpView: UIView {
    
    let filledConfiguration = UIButton.Configuration.filled()
    
   
    lazy var signInButton: UIButton = {
        let button = UIButton(configuration: filledConfiguration)
        button.configuration?.imagePadding = 10
        button.setTitle("Apple로 로그인하기", for: .normal)
        button.setImage(UIImage(systemName: "applelogo"), for: .normal)
        button.imageView?.contentMode = .scaleAspectFill
        button.imageView?.tintColor = .white
        button.tintColor = .black
        button.layer.cornerRadius = 10
        return button
    }()

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = Color.mainBackgroundcolor
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        self.addSubview(signInButton)
        
        signInButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(-56)
            make.width.equalTo(327)
            make.height.equalTo(54) // 버튼의 높이
            
        }
    }
}

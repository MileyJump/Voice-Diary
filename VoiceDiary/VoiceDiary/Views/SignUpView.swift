//
//  SignUpView.swift
//  VoiceDiary
//
//  Created by 최민경 on 3/5/24.
//

import UIKit
import SnapKit

final class SignUpView: UIView {
    
    private let filledConfiguration = UIButton.Configuration.filled()
    
    let signInButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "applelogo"), for: .normal)
        var attString = AttributedString("Apple로 로그인하기")
        attString.font = UIFont(name: "KCC-Ganpan", size: 18)
        attString.foregroundColor = .white
        var configuration = UIButton.Configuration.filled()
        configuration.attributedTitle = attString
        configuration.imagePadding = 10
        configuration.baseBackgroundColor = .black
        button.configuration = configuration
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
    
    private func setConstraints() {
        self.addSubview(signInButton)
        
        signInButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.bottom.equalTo(-56)
            make.width.equalTo(327)
            make.height.equalTo(54)
        }
    }
}

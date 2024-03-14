//
//  ListTableViewCell.swift
//  VoiceDiary
//
//  Created by 최민경 on 3/14/24.
//

import Foundation
import UIKit

class ListTableViewCell: UITableViewCell {
    
    let identifier = "ListTableViewCell"
    
    let titleLabel: UILabel = {
        let label = UILabel()
        label.text = "나는 마일리야"
        label.font = UIFont(name: "KCC-Ganpan", size: 18)
        label.textColor = UIColor(hexCode: "#604937")
//        label.backgroundColor = .systemBlue
        label.contentMode = .left
        return label
    }()
    
    let nickName: UILabel = {
        let label = UILabel()
        label.text = "나는 최강 민준"
        label.font = UIFont(name: "KCC-Ganpan", size: 15)
        label.textColor = UIColor(hexCode: "#AC9F92")
        label.contentMode = .left
        return label
    }()
    
    let dateLabel: UILabel = {
        let label = UILabel()
        label.text = "- 2024.03.14"
        label.font = UIFont(name: "KCC-Ganpan", size: 15)
        label.textColor = UIColor(hexCode: "#AC9F92")
        return label
    }()
    
    let heartButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        button.tintColor = UIColor(hexCode: "#604937").withAlphaComponent(0.3)
        return button
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = .clear
        setUpUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setUpUI(){
        contentView.addSubview(titleLabel)
        contentView.addSubview(nickName)
        contentView.addSubview(dateLabel)
        contentView.addSubview(heartButton)
        
        titleLabel.snp.makeConstraints { make in
//            make.top.equalToSuperview()
            make.left.equalToSuperview()
//            make.width.equalTo(100)
            make.height.equalTo(25)
            make.top.equalTo(24)
        }
        
        nickName.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(2)
            make.left.equalToSuperview()
            make.height.equalTo(21)
            make.bottom.equalTo(-16)
//            make.top.equalTo(24)
        }
        
        dateLabel.snp.makeConstraints { make in
            make.top.equalTo(nickName.snp.top)
            make.left.equalTo(nickName.snp.right).offset(5)
            make.height.equalTo(nickName.snp.height)
            make.bottom.equalTo(nickName.snp.bottom)
        }
        
        heartButton.snp.makeConstraints { make in
//            make.top.equalTo(14)
            make.centerY.equalToSuperview()
            make.right.equalTo(-5)
            make.width.equalTo(22)
            make.height.equalTo(20)
        }
        
    }
}

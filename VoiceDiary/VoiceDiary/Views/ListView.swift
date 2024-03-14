//
//  ListView.swift
//  VoiceDiary
//
//  Created by 최민경 on 3/8/24.
//

import Foundation
import UIKit

class ListView: UIView {
    
    let allButton: UIButton = {
        let button = UIButton()
        button.setTitle("전체", for: .normal)
        button.titleLabel?.textColor = .white
        button.titleLabel?.font = UIFont(name: "KCC-Ganpan", size: 15)
        button.backgroundColor = UIColor(hexCode: "#604937")
        button.layer.cornerRadius = 8
        return button
    }()
    
    let meButton: UIButton = {
        let button = UIButton()
        button.setTitle("나", for: .normal)
        button.titleLabel?.textColor = .white
        button.titleLabel?.font = UIFont(name: "KCC-Ganpan", size: 15)
        button.backgroundColor = UIColor(hexCode: "#604937").withAlphaComponent(0.3)
        button.layer.cornerRadius = 8
        button.sizeToFit()
        return button
    }()
    
    let youButton: UIButton = {
        let button = UIButton()
        button.setTitle("상대방", for: .normal)
        button.titleLabel?.textColor = .white
        button.titleLabel?.font = UIFont(name: "KCC-Ganpan", size: 15)
        button.backgroundColor = UIColor(hexCode: "#604937").withAlphaComponent(0.3)
        button.layer.cornerRadius = 8
        return button
    }()
    
    let buttonStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 12
        stackView.distribution = .equalSpacing
        return stackView
    }()
    
    let listTableView: UITableView = {
        let tableView = UITableView()
        tableView.backgroundColor = .clear
//        tableView.separatorStyle = .singleLine
        tableView.separatorInset.left = 0
        return tableView
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
        buttonStackView.addArrangedSubview(allButton)
        buttonStackView.addArrangedSubview(meButton)
        buttonStackView.addArrangedSubview(youButton)
        
        self.addSubview(buttonStackView)
        self.addSubview(listTableView)
        
        allButton.snp.makeConstraints { make in
            make.width.equalTo(42)
            make.height.equalTo(21)
        }
        
        meButton.snp.makeConstraints { make in
            make.width.equalTo(28)
            make.height.equalTo(21)
        }
        
        youButton.snp.makeConstraints { make in
            make.width.equalTo(52)
            make.height.equalTo(21)
        }
        
        buttonStackView.snp.makeConstraints { make in
            make.top.equalTo(100)
            make.centerX.equalToSuperview()
        }
        
        listTableView.snp.makeConstraints { make in
            make.top.equalTo(buttonStackView.snp.bottom).offset(32)
            make.left.equalTo(32)
            make.right.equalTo(-32)
            make.bottom.equalTo(safeAreaLayoutGuide.snp.bottom).offset(-5)
        }
        
        
        
    }
}

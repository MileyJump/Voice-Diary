//
//  NicNameViewController.swift
//  VoiceDiary
//
//  Created by 최민경 on 3/5/24.
//

import Foundation
import UIKit

class NicNameViewController: UIViewController {
    let nicNameView = NicNameView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = nicNameView
        
        setUpAddTarget()
        nicNameView.nickNameTextField.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setUpNaVi()
        
    }
    
    func setUpNaVi(){
        self.navigationItem.hidesBackButton = true
    }
    
    func setUpAddTarget(){
        nicNameView.nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
    }
    
    @objc func nextButtonTapped(){
        let connectionVC = ConnectionViewController()
        navigationController?.pushViewController(connectionVC, animated: true)
    }
}

extension NicNameViewController: UITextFieldDelegate {
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        if let textCount = nicNameView.nickNameTextField.text?.count {
            nicNameView.countLabel.text = "\(textCount)/12"
        }
        
        if nicNameView.nickNameTextField.text?.count != 0 {
            nicNameView.nextButton.backgroundColor = UIColor(hexCode: "#604937")
            nicNameView.nextButton.setTitleColor(.white, for: .normal)
        } else if nicNameView.nickNameTextField.text?.count == 0 {
            nicNameView.nextButton.backgroundColor = UIColor(hexCode: "#F1EAE4")
        }
        
        print("textFieldDidChangeSelection")
    }
    
}

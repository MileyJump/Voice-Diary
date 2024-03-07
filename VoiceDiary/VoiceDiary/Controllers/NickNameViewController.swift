//
//  NickNameViewController.swift
//  VoiceDiary
//
//  Created by 최민경 on 3/5/24.
//

import Foundation
import UIKit

class NickNameViewController: UIViewController {
    let nickNameView = NickNameView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = nickNameView
        
        setUpAddTarget()
        nickNameView.nickNameTextField.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setUpNaVi()
        nickNameView.nickNameTextField.becomeFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        nickNameView.nickNameTextField.resignFirstResponder()
    }
    
    
    func setUpNaVi(){
        self.navigationItem.hidesBackButton = true
    }
    
    func setUpAddTarget(){
        nickNameView.nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
    }
    
    @objc func nextButtonTapped(){
        let connectionVC = ConnectionViewController()
        navigationController?.pushViewController(connectionVC, animated: true)
    }
}

extension NickNameViewController: UITextFieldDelegate {
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        if let textCount = nickNameView.nickNameTextField.text?.count {
            nickNameView.countLabel.text = "\(textCount)/12"
        }
        
        if nickNameView.nickNameTextField.text?.isEmpty == false {
            nickNameView.nextButton.backgroundColor = UIColor(hexCode: "#604937")
            nickNameView.nextButton.setTitleColor(.white, for: .normal)
            nickNameView.nextButton.isUserInteractionEnabled = true
        } else {
            nickNameView.nextButton.backgroundColor = UIColor(hexCode: "#F1EAE4")
            nickNameView.nextButton.isUserInteractionEnabled = false
        }
    }
}

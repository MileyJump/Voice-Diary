//
//  SignUpViewController.swift
//  VoiceDiary
//
//  Created by 최민경 on 3/5/24.
//

import Foundation
import UIKit

class SignUpViewController: UIViewController {
    
    let signUpView = SignUpView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = signUpView
        
        setUpAddTarget()
       
    }
    
    func setUpAddTarget() {
        signUpView.signInButton.addTarget(self, action: #selector(signInButtonTapped), for: .touchUpInside)
        }
    
    @objc func signInButtonTapped(){
        print("SignInButtonTapped")
        let nicNameVC = NicNameViewController()
        self.navigationController?.pushViewController(nicNameVC, animated: true)
    }
    
}

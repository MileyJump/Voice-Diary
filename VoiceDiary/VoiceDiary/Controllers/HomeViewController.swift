//
//  ViewController.swift
//  VoiceDiary
//
//  Created by 최민경 on 2/26/24.
//

import UIKit

class HomeViewController: UIViewController {

    // MARK: - Initial Method
    
    let signUpView = SignUpView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = signUpView
        view.backgroundColor = .white
    }
}


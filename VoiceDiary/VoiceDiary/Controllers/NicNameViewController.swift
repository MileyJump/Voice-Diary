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
    }
    
    func setUpAddTarget(){
        nicNameView.nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
    }
    
    @objc func nextButtonTapped(){
        let connectionVC = ConnectionViewController()
        navigationController?.pushViewController(connectionVC, animated: true)
    }
    
}

//
//  ConnectionViewController.swift
//  VoiceDiary
//
//  Created by 최민경 on 3/5/24.
//

import Foundation
import UIKit

class ConnectionViewController: UIViewController {
    
    let connectionView = ConnectionView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = connectionView
        setUpAddTaget()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setUpNaVi()
    }
    
    func setUpNaVi(){
        self.navigationItem.hidesBackButton = true
    }
    
    func setUpAddTaget(){
        connectionView.nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
    }
    
    @objc func nextButtonTapped(){
        let startVC = StartViewController()
        navigationController?.pushViewController(startVC, animated: true)
    }
    
}

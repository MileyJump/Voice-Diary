//
//  StartViewController.swift
//  VoiceDiary
//
//  Created by 최민경 on 3/6/24.
//

import Foundation
import UIKit

class StartViewController: UIViewController {
    
    let startView = StartView()
     
    override func viewDidLoad() {
        super.viewDidLoad()
        view = startView

        setUpAddTarGet()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setUpNaVi()
    }
    
    func setUpNaVi(){
        self.navigationItem.hidesBackButton = true
    }
    
    func setUpAddTarGet(){
        startView.startButton.addTarget(self, action: #selector(startButtonTapped), for: .touchUpInside )
    }
    
    @objc func startButtonTapped(){
        
        
    }
}

//
//  ViewController.swift
//  VoiceDiary
//
//  Created by 최민경 on 2/26/24.
//

import UIKit

class HomeViewController: UIViewController {

    // MARK: - Initial Method
    
    let homeView = HomeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = homeView

        setUpNaviBar()
        setUpAddTarget()
    }
    
    func setUpNaviBar(){
        self.navigationItem.backButtonTitle = ""
       
    }
    
    
    func setUpAddTarget(){
        homeView.listenButton.addTarget(self, action: #selector(listenButtonTapped), for: .touchUpInside)
    }
    
    @objc func listenButtonTapped(){
        let listenVC = ListenViewController()
        
        navigationController?.pushViewController(listenVC, animated: true)
    }
    
}


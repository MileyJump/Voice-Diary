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
        
        setUpAddTarget()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        setUpNaviBar()
    }
    
    func setUpNaviBar(){
        self.navigationItem.backButtonTitle = ""
        self.tabBarController?.tabBar.isHidden = false
    }
    
    
    func setUpAddTarget(){
        homeView.listenButton.addTarget(self, action: #selector(listenButtonTapped), for: .touchUpInside)
    }
    
    @objc func listenButtonTapped(){
        let listenVC = ListenViewController()
        
        navigationController?.pushViewController(listenVC, animated: true)
    }
    
}


//
//  ListenViewController.swift
//  VoiceDiary
//
//  Created by 최민경 on 3/8/24.
//

import Foundation
import UIKit

class ListenViewController: UIViewController {
    
    let listenView = ListenView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = listenView
        
        setUpAddTarget()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
//        setUpAddTarget()
    }
    
    func setUpAddTarget(){
        listenView.heartButton.addTarget(self, action: #selector(heartButtonTapped), for: .touchUpInside)
        
        listenView.playButton.addTarget(self, action: #selector(playButtonTapped), for: .touchUpInside)
    }
    
    @objc func heartButtonTapped(){
        listenView.heartButton.isSelected.toggle()
        
        if listenView.heartButton.isSelected {
            listenView.heartButton.tintColor = UIColor(hexCode: "#D65454")
            
        } else {
            listenView.heartButton.tintColor = UIColor(hexCode: "#604937").withAlphaComponent(0.3)
            
        }
        
    }
    
    @objc func playButtonTapped(){
        listenView.playButton.isSelected.toggle()
        
        if listenView.playButton.isSelected {
            listenView.playButton.setImage(UIImage(systemName: "pause.circle"), for: .normal)
            print("버튼 isSelected")
        } else {
            listenView.playButton.setImage(UIImage(systemName: "play.circle"), for: .normal)
            print("버튼 is Not Selected")
        }
    }
}

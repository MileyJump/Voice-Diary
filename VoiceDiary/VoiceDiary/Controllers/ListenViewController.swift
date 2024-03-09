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
    
    /// .setProgress(time, animated: true)에서 time은 Float형을 사용
        var time: Float = 0.0
        var timer: Timer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = listenView
        
        setUpAddTarget()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setUpNaviBar()
    }
    
    func setUpNaviBar() {
        
        let textAttributes = [NSAttributedString.Key.foregroundColor: UIColor(hexCode: "#604937"), NSAttributedString.Key.font: UIFont(name: "KCC-Ganpan", size: 15)!]
        
        navigationController?.navigationBar.titleTextAttributes = textAttributes
        
        self.navigationItem.title = "2월 10일 Sat."
        
        self.navigationController?.navigationBar.tintColor = UIColor(hexCode: "#614937")
        
        tabBarController?.tabBar.isHidden = true
        
        print("setUpNaviBar")
        
    }
    
    
    func setUpAddTarget(){
        listenView.heartButton.addTarget(self, action: #selector(heartButtonTapped), for: .touchUpInside)
        
        listenView.playButton.addTarget(self, action: #selector(playButtonTapped), for: .touchUpInside)
        
        listenView.replyButton.addTarget(self, action: #selector(replyButtonTapped), for: .touchUpInside)
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
            let imageConfiguration = UIImage.SymbolConfiguration(pointSize: 60, weight: .light)
            let image = UIImage(systemName: "pause.circle.fill", withConfiguration: imageConfiguration)
            listenView.playButton.setImage(image, for: .normal)
            timer?.invalidate()
            timer = Timer.scheduledTimer(timeInterval: 0.01, target: self, selector: #selector(setProgress), userInfo: nil, repeats: true)
            
            print("버튼 isSelected")
        } else {
            let imageConfiguration = UIImage.SymbolConfiguration(pointSize: 60, weight: .light)
            let image = UIImage(systemName: "play.circle.fill", withConfiguration: imageConfiguration)
            listenView.playButton.setImage(image, for: .normal)
            print("버튼 is Not Selected")
            
        }
    }
    @objc func setProgress() {
           time += 0.05
        listenView.voiceProgress.setProgress(time, animated: true)
           if time >= 1.0 { timer?.invalidate() }
       }
    
    @objc func replyButtonTapped() {
        let recordVC = RecordViewController()
        
        if let sheet = recordVC.sheetPresentationController {
            sheet.detents = [.medium()]
            
            sheet.prefersGrabberVisible = true // 모달뷰 잡아끌 수 있는
//            sheet.largestUndimmedDetentIdentifier = .large // 흐리게
        }
        self.present(recordVC, animated: true)
        
        
    }
}

//
//  RecordViewController.swift
//  VoiceDiary
//
//  Created by 최민경 on 3/8/24.
//

import Foundation
import UIKit

class RecordViewController: UIViewController {
    
    let recordView = RecordView()
    
   let imagesManager = ImagesManager()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = recordView
        
        recordView.titleTextField.isUserInteractionEnabled = false
        recordView.titleTextField.delegate = self
        setUpAddTarget()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }


    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        recordView.titleTextField.resignFirstResponder()
    }

    
    
    func setUpAddTarget(){
        recordView.editButton.addTarget(self, action: #selector(editButtonTapped), for: .touchUpInside)
        
        recordView.playButton.addTarget(self, action: #selector(playButtonTapped), for: .touchUpInside)
    }
    
    @objc func editButtonTapped(){
        recordView.titleTextField.isUserInteractionEnabled = true
        recordView.titleTextField.becomeFirstResponder()
        print("확인용")
    }
    
    @objc func playButtonTapped(){
        recordView.playButton.isSelected.toggle()
       
        
        
//        recordView.playButton.setImage(imagesManager.nextImage(), for: .normal)

        
        if recordView.playButton.isSelected {
            recordView.playButton.tintColor = UIColor(hexCode: "#D65454")
            let imageConfiguration = UIImage.SymbolConfiguration(pointSize: 60, weight: .light)
            let image = UIImage(systemName: "pause.circle.fill", withConfiguration: imageConfiguration)
            recordView.playButton.setImage(image, for: .normal)
        } else {
            recordView.playButton.tintColor = UIColor(hexCode: "#D65454")
            let imageConfiguration = UIImage.SymbolConfiguration(pointSize: 60, weight: .light)
            let image = UIImage(systemName: "play.circle.fill", withConfiguration: imageConfiguration)
            recordView.playButton.setImage(image, for: .normal)
            
        }
    }
    
    
}

extension RecordViewController: UITextFieldDelegate {
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        print("실행되는지 확인하고 있습니다만")
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        recordView.titleTextField.isUserInteractionEnabled = false
        print("확인용2")
    }
    
}

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
        nicNameView.nickNameTextField.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setUpNaVi()
        
    }
    
    func setUpNaVi(){
        self.navigationItem.hidesBackButton = true
    }
    
    func setUpAddTarget(){
        nicNameView.nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
    }
    
    @objc func nextButtonTapped(){
        let connectionVC = ConnectionViewController()
        navigationController?.pushViewController(connectionVC, animated: true)
    }
}

extension NicNameViewController: UITextFieldDelegate {
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        if (nicNameView.nickNameTextField.text != nil) {
            //            nicNameView.nextButton.backgroundColor = Color.mainColor
            nicNameView.nextButton.backgroundColor = UIColor(hexCode: "#604937")
            print("textFieldDidChangeSelection")
        }
    }
    //    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
    //        
    //        
    //        return false
    //    }
    //    
    //    func textFieldDidEndEditing(_ textField: UITextField) {
    //        if (nicNameView.nickNameTextField.text != nil) {
    //            nicNameView.nextButton.backgroundColor = Color.unTouchedColor
    //            print("textFieldDidEndEditing")
    //        }
    //    }
}

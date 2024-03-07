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
        
        connectionView.codeInPutTextField.delegate = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setUpNaVi()
        connectionView.codeInPutTextField.becomeFirstResponder()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        connectionView.codeInPutTextField.resignFirstResponder()
    }
    
    
    func setUpNaVi(){
        self.navigationItem.hidesBackButton = true
    }
    
    func setUpAddTaget(){
        connectionView.nextButton.addTarget(self, action: #selector(nextButtonTapped), for: .touchUpInside)
        
        connectionView.codeCopyButton.addTarget(self, action: #selector(codeCopyButtonTapped), for: .touchUpInside)
        
        connectionView.upLoadButton.addTarget(self, action: #selector(upLoadButtonTapped), for: .touchUpInside)
    }
    
    @objc func nextButtonTapped(){
        let startVC = StartViewController()
        navigationController?.pushViewController(startVC, animated: true)
    }
    
    @objc func codeCopyButtonTapped(){
        print("connectionVC - codeCopyButtonTapped")
    }
    
    @objc func upLoadButtonTapped(){
        print("connectionVC - upLoadButtonTapped")
        connectionView.nextButton.isUserInteractionEnabled = true
        connectionView.conNectLabel.text = "민경님과 연결됐어요"
        connectionView.nextButton.backgroundColor = UIColor(hexCode: "#604937")
        
        
    }
}

extension ConnectionViewController: UITextFieldDelegate {
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        if connectionView.codeInPutTextField.text?.isEmpty == true {
            connectionView.upLoadButton.isUserInteractionEnabled = false
        } else {
            connectionView.upLoadButton.isUserInteractionEnabled = true
        }
        
    }
}

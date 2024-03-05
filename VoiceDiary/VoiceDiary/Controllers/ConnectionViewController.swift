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
    }
    
}

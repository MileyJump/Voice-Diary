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
    }
    
}

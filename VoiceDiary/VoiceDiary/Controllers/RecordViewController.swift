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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = recordView
    }
    
    
}

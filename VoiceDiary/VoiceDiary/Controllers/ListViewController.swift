//
//  ListViewController.swift
//  VoiceDiary
//
//  Created by 최민경 on 3/8/24.
//

import Foundation
import UIKit

class ListViewController: UIViewController {
    
    let listView = ListView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = listView
    }
}

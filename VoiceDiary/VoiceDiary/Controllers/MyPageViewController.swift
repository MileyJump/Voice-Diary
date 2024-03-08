//
//  MyPageViewController.swift
//  VoiceDiary
//
//  Created by 최민경 on 3/4/24.
//

import Foundation
import UIKit

class MyPageViewController: UIViewController{
    
    let myPageView = MyPageView()
    
    // MARK: - Initial Method
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view = myPageView
    }
}

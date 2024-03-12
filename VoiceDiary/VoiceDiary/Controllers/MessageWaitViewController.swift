//
//  MessageWait.swift
//  VoiceDiary
//
//  Created by 최민경 on 3/11/24.
//

import Foundation
import UIKit

class MessageWaitViewController: UIViewController {
    
    let messageWaitView = MessageWaitView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view = messageWaitView
    }
    
}

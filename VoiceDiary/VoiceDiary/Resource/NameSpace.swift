//
//  NameSpace.swift
//  VoiceDiary
//
//  Created by 최민경 on 3/4/24.
//

import UIKit

// MARK: - Colors
//
enum Color {
//    
//    static let mainColor = UIColor(red: 0.38, green: 0.29, blue: 0.22, alpha: 1.00)
    static let mainBackgroundcolor = UIColor(red: 0.97, green: 0.97, blue: 0.93, alpha: 1.00)
//    static let labelColor = UIColor(red: 0.38, green: 0.29, blue: 0.22, alpha: 1.00)
//    static let serveLabelColor = UIColor(red: 0.67, green: 0.62, blue: 0.57, alpha: 1.00)
//    static let unTouchedColor = UIColor(red: 0.95, green: 0.92, blue: 0.89, alpha: 1.00)
//    static let buttonColor = UIColor(red: 0.90, green: 0.85, blue: 0.82, alpha: 1.00)
//    static let buttonTittleColor = UIColor(red: 0.38, green: 0.29, blue: 0.22, alpha: 1.00)
//    static let placeholderColor = UIColor(red: 0.84, green: 0.78, blue: 0.73, alpha: 1.00)
}



extension UIColor {
    
    convenience init(hexCode: String, alpha: CGFloat = 1.0) {
        var hexFormatted: String = hexCode.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased()
        
        if hexFormatted.hasPrefix("#") {
            hexFormatted = String(hexFormatted.dropFirst())
        }
        
        assert(hexFormatted.count == 6, "Invalid hex code used.")
        
        var rgbValue: UInt64 = 0
        Scanner(string: hexFormatted).scanHexInt64(&rgbValue)
        
        self.init(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
                  green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
                  blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
                  alpha: alpha)
    }
}





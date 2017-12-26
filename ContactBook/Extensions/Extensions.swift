//
//  Extensions.swift
//  ASContacts
//
//  Created by Anton Stremovskiy on 6/26/17.
//  Copyright © 2017 áSoft. All rights reserved.
//

import Foundation
import UIKit

public extension String {
    
    func index(from: Int) -> Index {
        return self.index(startIndex, offsetBy: from)
    }
    
    func substring(from: Int) -> String {
        let fromIndex = index(from: from)
        //return substring(from: fromIndex)
         return String(self[fromIndex...])
    }
    
    func substring(to: Int) -> String {
        let toIndex = index(from: to)
        //return substring(to: toIndex)
        return String(self[..<toIndex])
    }
    
    func substring(with r: Range<Int>) -> String {
        let startIndex = index(from: r.lowerBound)
        let endIndex = index(from: r.upperBound)
        //return substring(with: startIndex..<endIndex)
        return String(self[startIndex..<endIndex])
    }
    
    var digits: String {
        return components(separatedBy: CharacterSet.decimalDigits.inverted)
            .joined()
    }
}


public extension UIViewController {
    class func loadFromNib<T: UIViewController>() -> T {
        return T(nibName: String(describing: self), bundle: nil)
    }
}

public extension NSObject {
    
    var className: String {
        return NSStringFromClass(self as! AnyClass).components(separatedBy: ".").last ?? ""
    }
    
    public class var className: String {
        return NSStringFromClass(self).components(separatedBy: ".").last ?? ""
    }
}

public extension Date {
    
    func dateToStringFullMonth() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "MMMM dd, YYYY"
        return formatter.string(from: self)
    }
}



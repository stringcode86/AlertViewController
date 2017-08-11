//
//  UIAlertAction+Extensions.swift
//  AlertViewController
//
//  Created by Michael Inger on 26/07/2017.
//  Copyright © 2017 stringCode ltd. All rights reserved.
//

import UIKit

/// Adds ability to display image left of the action title, by leveraging KVC. 
/// Also checks whether `UIAlertAction` responds to appropriate selector to 
/// avoid crashes if property is not available in the future.
extension UIAlertAction {
    
    /// Image to display left of the action title
    var actionImage: UIImage? {
        get {
            if self.responds(to: Selector(Constants.imageKey)) {
                return self.value(forKey: Constants.imageKey) as? UIImage
            }
            return nil
        }
        set {
            if self.responds(to: Selector(Constants.imageKey)) {
                self.setValue(newValue, forKey: Constants.imageKey)
            }
        }
    }
    
    private struct Constants {
        static var imageKey = "image"
    }
}

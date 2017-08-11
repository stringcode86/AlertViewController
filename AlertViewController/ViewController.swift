//
//  ViewController.swift
//  AlertViewController
//
//  Created by Michael Inger on 26/07/2017.
//  Copyright © 2017 stringCode ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func doStuffAction(_ sender: Any) {
        // Create AlertController
        let alert = AlertController(title: "Tesing", message: "Wubba lubba dub dub", preferredStyle: .alert)
        alert.setTitleImage(UIImage(named: "alert"))
        // Add actions
        let action = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        action.actionImage = UIImage(named: "close")
        alert.addAction(UIAlertAction(title: "Default", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Destroy", style: .destructive, handler: nil))
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }

}


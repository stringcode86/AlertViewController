//
//  ViewController.swift
//  AlertViewController
//
//  Created by Michael Inger on 26/07/2017.
//  Copyright © 2017 stringCode ltd. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func doStuffAction(_ sender: Any) {
        let alert = AlertController(title: "Tesing", message: "Wubba lubba dub dub, really long text. That is what I need to test in here", preferredStyle: .alert)
        alert.setTitleImage(UIImage(named: "alert"))
        let action = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        //action.setValue(UIImage(named: "close"), forKey: "image")
        action.actionImage = UIImage(named: "close")
        alert.addAction(action)
        alert.addAction(UIAlertAction(title: "Default", style: .default, handler: nil))
        alert.addAction(UIAlertAction(title: "Destroy", style: .destructive, handler: nil))

        
//        let imageView = UIImageView(image: UIImage(named: "alert"))
//        alert.view.addSubview(imageView)
//        imageView.center.x = alert.view.bounds.width / 2
    
        
        present(alert, animated: true, completion: nil)

    }

}


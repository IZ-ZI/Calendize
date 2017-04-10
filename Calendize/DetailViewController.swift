//
//  detailViewController.swift
//  Calendize
//
//  Created by Isaac Zhu on 4/10/17.
//  Copyright © 2017 Isaac Zhu. All rights reserved.
//

import Foundation
import UIKit

class DetailViewController: UIViewController{
    
    @IBOutlet weak var detailView: UIView!
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var noButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // corner radius
        detailView.layer.cornerRadius = 20
        yesButton.layer.cornerRadius = 25
        noButton.layer.cornerRadius = 25
        
        // border
        detailView.layer.borderWidth = 2.0
        detailView.layer.borderColor = UIColor.black.cgColor
        
        // shadow
        detailView.layer.shadowColor = UIColor.black.cgColor
        detailView.layer.shadowOffset = CGSize(width: 4, height: 4)
        detailView.layer.shadowOpacity = 0.8
        detailView.layer.shadowRadius = 8    }
    
    
    @IBAction func returnToPreviousView(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}

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
    
    //popover view
    @IBOutlet weak var detailView: UIView!
    
    //action buttons
    @IBOutlet weak var yesButton: UIButton!
    @IBOutlet weak var noButton: UIButton!
    
    //title
    @IBOutlet weak var titleLabel: UILabel!
    
    //cover image
    @IBOutlet weak var coverImage: UIImageView!
    
    //description
    @IBOutlet weak var detailTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //
        let blurEffect = UIBlurEffect(style: UIBlurEffectStyle.extraLight)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = view.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        view.insertSubview(blurEffectView, at: 0)
        
        // corner radius
        detailView.layer.cornerRadius = 20
        yesButton.layer.cornerRadius = 15
        noButton.layer.cornerRadius = 15
        
        // border
        detailView.layer.borderWidth = 2.0
        detailView.layer.borderColor = UIColor.black.cgColor
        
        // shadow
        detailView.layer.shadowColor = UIColor.black.cgColor
        detailView.layer.shadowOffset = CGSize(width: 4, height: 4)
        detailView.layer.shadowOpacity = 0.8
        detailView.layer.shadowRadius = 8
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        detailTextView.setContentOffset(CGPoint.zero, animated: false)
    }
    
    
    @IBAction func returnToPreviousView(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}

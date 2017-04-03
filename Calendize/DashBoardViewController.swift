//
//  FirstViewController.swift
//  Calendize
//
//  Created by Isaac Zhu on 4/3/17.
//  Copyright © 2017 Isaac Zhu. All rights reserved.
//

import UIKit

class DashBoardViewController: UIViewController {

    @IBOutlet weak var createNewEvent: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Nice looking background! Why not?
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "bg_01")?.draw(in: self.view.bounds)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        
        //Round-Edge Button! Why not?
        createNewEvent.layer.cornerRadius = 50
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


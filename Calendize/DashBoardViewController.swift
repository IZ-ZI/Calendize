//
//  FirstViewController.swift
//  Calendize
//
//  Created by Isaac Zhu on 4/3/17.
//  Copyright © 2017 Isaac Zhu. All rights reserved.
//

import UIKit

class DashBoardViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{    
    @IBOutlet weak var createNewEvent: UIButton!
    @IBOutlet weak var eventView: UICollectionView!
    
    
    var img = ["test","test","test","test","test","test"]
    var label = ["01","02","03","04","05","06"]
    var cells : CustomCell!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Nice looking background! Why not?
        UIGraphicsBeginImageContext(self.view.frame.size)
        UIImage(named: "bg_01")?.draw(in: self.view.bounds)
        let image: UIImage = UIGraphicsGetImageFromCurrentImageContext()!
        UIGraphicsEndImageContext()
        self.view.backgroundColor = UIColor(patternImage: image)
        
        //Round-Edged Button! Why not?
        createNewEvent.layer.cornerRadius = 25
        //previous.layer.cornerRadius = 50
        //forward.layer.cornerRadius = 50
        
        //Setting up delegates
        eventView.delegate = self
        eventView.dataSource = self
    }


    public func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int{
        return img.count
    }
    
    public func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell{
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CustomCell", for: indexPath) as! CustomCell
        cell.cellImage.image = UIImage(named: "test")
        cell.cellImage.contentMode = .scaleAspectFit
        cell.cellLabel.text = label[indexPath.row]
        cell.layer.cornerRadius = 50
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 5
        return cell
    }

    
    @IBAction func createNewEventCell(_ sender: UIButton) {
    }
    
    
}



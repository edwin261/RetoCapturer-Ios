//
//  ImagesViewController.swift
//  Reto Capturer
//
//  Created by Mac002 on 29/08/17.
//  Copyright © 2017 Mac002. All rights reserved.
//

import UIKit

class ImagesViewController: UIViewController {

    let flip = arc4random_uniform(20)

    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        switch(flip)
        {
        case 0:
            image.image = #imageLiteral(resourceName: "ua1.png")
            break;
        case 1:
            image.image = #imageLiteral(resourceName: "ua2.png")
            break;
        case 2:
            image.image = #imageLiteral(resourceName: "ua3.png")
            break;
        case 3:
            image.image = #imageLiteral(resourceName: "ua4.png")
            break;
        case 4:
            image.image = #imageLiteral(resourceName: "ua5.png")
            break;
        case 5:
            image.image = #imageLiteral(resourceName: "ua6.png")
            break;
        case 6:
            image.image = #imageLiteral(resourceName: "ua7.png")
            break;
        case 7:
            image.image = #imageLiteral(resourceName: "ua8.png")
            break;
        case 8:
            image.image = #imageLiteral(resourceName: "ua9.png")
            break;
        case 9:
            image.image = #imageLiteral(resourceName: "ua10.png")
            break;
        case 10:
            image.image = #imageLiteral(resourceName: "ua11.png")
            break;
        case 11:
            image.image = #imageLiteral(resourceName: "ua12.png")
            break;
        case 12:
            image.image = #imageLiteral(resourceName: "ua13.png")
            break;
        case 13:
            image.image = #imageLiteral(resourceName: "ua14.png")
            break;
        case 14:
            image.image = #imageLiteral(resourceName: "ua15.png")
            break;
        case 15:
            image.image = #imageLiteral(resourceName: "ua16.png")
            break;
        case 16:
            image.image = #imageLiteral(resourceName: "ua17.png")
            break;
        case 17:
            image.image = #imageLiteral(resourceName: "ua18.png")
            break;
        case 18:
            image.image = #imageLiteral(resourceName: "ua19.png")
            break;
        default:
            image.image = #imageLiteral(resourceName: "ua20.png")
            break;
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       
    }
    
    override var shouldAutorotate: Bool {
        return false
    }
    
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask{
        return.landscapeLeft
    }

    override var preferredInterfaceOrientationForPresentation: UIInterfaceOrientation{
        return.landscapeLeft
    }
    
}

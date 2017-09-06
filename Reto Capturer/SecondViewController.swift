//
//  SecondViewController.swift
//  Reto Capturer
//
//  Created by Mac002 on 29/08/17.
//  Copyright © 2017 Mac002. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var Welcome: UILabel!
    var dato_correo = String()
    
    @IBAction func images(_ sender: Any) {
        performSegue(withIdentifier: "images", sender: self)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Welcome.text = "Bienvenido: " + dato_correo;

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

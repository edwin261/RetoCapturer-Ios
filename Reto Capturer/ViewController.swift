//
//  ViewController.swift
//  Reto Capturer
//
//  Created by Mac002 on 29/08/17.
//  Copyright © 2017 Mac002. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var Correo: UITextField!
    @IBOutlet weak var password: UITextField!
    
    func isValidEmail(testStr:String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+(\\.)*uniatlantico.edu.co"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        let result = emailTest.evaluate(with: testStr)
        return result
    }
    
    @IBAction func Login(_ sender: Any) {
        if (isValidEmail(testStr: Correo.text!) && password.hasText){
        performSegue(withIdentifier: "info", sender: self)
        }else{
            createAlert(titleText: "Login", messageText: "Ingresar Correo Institucional y Contraseña")
        }
    }
    
    func createAlert(titleText:String, messageText:String) {
        let alert = UIAlertController(title: titleText, message: messageText, preferredStyle: UIAlertControllerStyle.alert)
        
        alert.addAction(UIAlertAction(title: "Ok", style: UIAlertActionStyle.default, handler: {(action) in alert.dismiss(animated: true, completion: nil)
        }))
        self.present(alert, animated: true, completion: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let next_controller = segue.destination as! SecondViewController
        next_controller.dato_correo = Correo.text!
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


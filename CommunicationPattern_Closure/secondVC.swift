//
//  secondVC.swift
//  CommunicationPattern_Closure
//
//  Created by arshad on 4/25/22.
//

import UIKit

class secondVC: UIViewController {

    @IBOutlet weak var text1: UITextField!
    @IBOutlet weak var text2: UITextField!
    
    var passBackToData:(([String:String])->(Void))?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendBack(_ sender: Any) {
        
        let passData:[String:String] = ["text1":text1.text!,"text2":text2.text!]
        self.passBackToData?(passData)
        self.navigationController?.popViewController(animated: true)
    }
}


//second Method
//
//class secondVC: UIViewController {
//
//    @IBOutlet weak var text1: UITextField!
//    @IBOutlet weak var text2: UITextField!
//
//    var passBackToData:(([passData])->(Void))?
//    var data = [passData]()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        // Do any additional setup after loading the view.
//    }
//
//    @IBAction func sendBack(_ sender: Any) {
//        self.data.append(passData(text1: text1.text!, text2: text2.text!))
//        self.passBackToData?(data)
//        self.navigationController?.popViewController(animated: true)
//    }
//}
//
//
//
//struct passData {
//    let text1:String
//    let text2:String
//}
//

//
//  ViewController.swift
//  CommunicationPattern_Closure
//
//  Created by arshad on 4/25/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func goTo(_ sender: Any) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "secondVC") as! secondVC

              vc.passBackToData = { data in
      
                  self.lbl1.text = data["text1"]
                  self.lbl1.text = data["text2"]
        }
        
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
}




//Second Method
//@IBAction func goTo(_ sender: Any) {
//
//    let vc = self.storyboard?.instantiateViewController(withIdentifier: "secondVC") as! secondVC
//
//    @IBAction func goTo(_ sender: Any) {
//
//        let vc = self.storyboard?.instantiateViewController(withIdentifier: "secondVC") as! secondVC
//
//              vc.passBackToData = { data in
//
//                  for i in data{
//                      lbl1.test = i.text1
//                      lbl2.text = i.text2
//                        }
//        }
//
//        self.navigationController?.pushViewController(vc, animated: true)
//
//    }
//}
//    self.navigationController?.pushViewController(vc, animated: true)
//}

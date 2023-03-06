//
//  SecondViewController.swift
//  Data Passing Through Closure
//
//  Created by sainath bamen on 31/12/22.
//

import UIKit

typealias text = (String) -> ()

class SecondViewController: UIViewController {
    var closure:text!
    
    
    @IBOutlet weak var petNameTxt: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func dismissBtn(_ sender: Any) {
        guard let text = petNameTxt.text else {return}
        closure(text)
        navigationController?.popViewController(animated: true)
    }
    
   
    }
    



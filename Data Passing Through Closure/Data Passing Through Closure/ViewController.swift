//
//  ViewController.swift
//  Data Passing Through Closure
//
//  Created by sainath bamen on 31/12/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var petLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func nextButton(_ sender: Any) {
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyBoard.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        vc.closure = {text in
                self.petLabel.text = text
        }
        navigationController?.pushViewController(vc, animated: true)
    }
    
}


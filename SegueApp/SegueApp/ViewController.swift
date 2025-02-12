//
//  ViewController.swift
//  SegueApp
//
//  Created by Muhammet Kuzu on 11.02.2025.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var MyLabel: UILabel!
    
    var userName = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //Lifecycle
        print("viewdidLoad function called")
    }

    
    override func viewDidDisappear(_ animated: Bool) {
            print("viewDidDisappear function called")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("viewWillDisappear function called")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("viewWillAppear function called")
        nameText.text = ""
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("viewDidAppear function called")
    }
    
    @IBAction func nextButton(_ sender: UIButton) {
        userName = nameText.text!
        performSegue(withIdentifier: "toSecondVC", sender: nil)
    }
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            // as -- casting
            let destinationVC = segue.destination as!  SecondViewController
            destinationVC.myName = userName
        }
    }
    
}


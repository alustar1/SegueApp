//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Muhammet Kuzu on 11.02.2025.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var nameLabel: UILabel!
    
    var myName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()

        nameLabel.text = myName
    }
    

   

}

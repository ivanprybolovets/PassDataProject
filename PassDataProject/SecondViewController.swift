//
//  SecondViewController.swift
//  PassDataProject
//
//  Created by Ivan Prybolovetz on 4/5/20.
//  Copyright © 2020 Ivan Prybolovetz. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var login: String?
    @IBOutlet weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let login = login else { return }
        label.text = "Hello, \(login)"
        
    }
    
    
    @IBAction func goBackTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "unwindSegue", sender: nil)
    }
    
}

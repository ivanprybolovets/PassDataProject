//
//  ViewController.swift
//  PassDataProject
//
//  Created by Ivan Prybolovetz on 4/5/20.
//  Copyright © 2020 Ivan Prybolovetz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    @IBOutlet weak var returnLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func loginTapped(_ sender: UIButton) {
        performSegue(withIdentifier: "detailSegue", sender: nil)

    }
    
    @IBAction func unwindSegueToMainScreen(segue: UIStoryboardSegue) {
        guard segue.identifier == "unwindSegue" else { return }
        guard let svc = segue.source as? SecondViewController else { return }
        self.returnLabel.text = svc.label.text

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let destinationViewController = segue.destination as? SecondViewController else { return }
        destinationViewController.login = loginTF.text
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    
}


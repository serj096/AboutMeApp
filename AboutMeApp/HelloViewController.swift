//
//  HelloViewController.swift
//  AboutMeApp
//
//  Created by serj on 07.04.2025.
//

import UIKit

class HelloViewController: UIViewController {
    
    @IBOutlet weak var helloLaber: UILabel!
    
    var username: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloLaber.text = "Добро пожаловать, \(username)!"
    }
    

    @IBAction func logoutButtonPressed() {
        dismiss(animated: true)
    }
    

}

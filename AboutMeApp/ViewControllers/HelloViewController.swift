//
//  HelloViewController.swift
//  AboutMeApp
//
//  Created by serj on 07.04.2025.
//

import UIKit

final class HelloViewController: UIViewController {
    
    
    @IBOutlet weak var helloLaber: UILabel!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloLaber.text = """
            Welcome, \(user.username)!
            My name is \(user.person.fullName).
            """
    }
    
}

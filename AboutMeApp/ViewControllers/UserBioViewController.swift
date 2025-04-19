//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by serj on 18.04.2025.
//

import UIKit

final class UserBioViewController: UIViewController {
   
    
    @IBOutlet weak var BioTextView: UITextView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "\(user.person.fullName) Bio"
        
        BioTextView.backgroundColor = .clear
        BioTextView.textColor = .black
        BioTextView.text = user.person.bio
    }
    

   

}

//
//  UserInfoViewController.swift
//  AboutMeApp
//
//  Created by serj on 18.04.2025.
//

import UIKit

final class UserInfoViewController: UIViewController {
    
    @IBOutlet weak var pictureImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var lastNameLabel: UILabel!
    @IBOutlet weak var dateOfBirthLabel: UILabel!
    @IBOutlet weak var petInfoLabel: UILabel!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()

       title = user.person.fullName
        nameLabel.text = user.person.firstName
        lastNameLabel.text = user.person.lastName
       dateOfBirthLabel.text = user.person.birthDate
        petInfoLabel.text = user.person.hasPet ? "Yes" : "No"

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let userBioVC = segue.destination as? UserBioViewController
        userBioVC?.user = user
    }
    

}

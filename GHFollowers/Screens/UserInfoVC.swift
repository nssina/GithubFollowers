//
//  UserInfoVC.swift
//  GHFollowers
//
//  Created by Sina Rabiei on 12/5/20.
//

import UIKit

class UserInfoVC: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dimissVC))
        navigationItem.rightBarButtonItem = doneButton
    }
    
    @objc func dimissVC() {
        dismiss(animated: true)
    }

}

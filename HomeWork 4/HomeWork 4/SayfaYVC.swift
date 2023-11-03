//
//  SayfaYVC.swift
//  HomeWork 4
//
//  Created by Burak Satır on 3.11.2023.
//

import UIKit

class SayfaYVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()


    }
    
    @IBAction func buttonAnasayfa(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
}

//
//  SayfaBVC.swift
//  HomeWork 4
//
//  Created by Burak Satır on 3.11.2023.
//

import UIKit

class SayfaBVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func buttonSayfaY(_ sender: Any) {
        performSegue(withIdentifier: "sayfaYGecis", sender: nil)
    }
    
}

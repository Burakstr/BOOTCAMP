//
//  SayfaXVC.swift
//  HomeWork 4
//
//  Created by Burak Satır on 3.11.2023.
//

import UIKit

class SayfaXVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    @IBAction func buttonSayfaY(_ sender: Any) {
        performSegue(withIdentifier: "sayfaYGecis", sender: nil)
    }
}

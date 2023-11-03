//
//  SayfaAVC.swift
//  HomeWork 4
//
//  Created by Burak Satır on 3.11.2023.
//

import UIKit

class SayfaAVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func buttonSayfaB(_ sender: Any) {
        performSegue(withIdentifier: "sayfaBGecis", sender: nil)
    }
    
}

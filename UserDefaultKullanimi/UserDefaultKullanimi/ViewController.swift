//
//  ViewController.swift
//  UserDefaultKullanimi
//
//  Created by Burak Satır on 12.11.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var labelSayac: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Tanımlama
        let ud = UserDefaults.standard
        
        //Kayıt
        ud.setValue("Ahmet", forKey: "ad")
        ud.setValue(23, forKey: "yas")
        ud.setValue(1.78, forKey: "boy")
        ud.setValue(true, forKey: "bekar")
        
        let liste = ["ali","ece"]
        ud.setValue(liste, forKey: "liste")
        
        let sehirler = ["16":"Bursa","34":"İstanbul"]
        ud.setValue(sehirler, forKey: "sehirler")
        //Silme
        //ud.removeObject(forKey: "ad")
        
        //Okuma
        let gelenAd = ud.string(forKey: "ad") ?? "isim yok"
        let gelenYas = ud.integer(forKey: "yas")//0
        let gelenBoy = ud.double(forKey: "boy")//0.0
        let gelenBekar = ud.bool(forKey: "bekar")//False
        print("Gelen Ad : \(gelenAd)")
        print("Gelen Yas : \(gelenYas)")
        print("Gelen Boy : \(gelenBoy)")
        print("Gelen Bekar: \(gelenBekar)")
        
        let gelenListe = ud.array(forKey: "liste") ?? [String]()
        
        for a in gelenListe {
            print("Gelen Liste : \(a)")
        }
        
        let gelenSehirler = ud.dictionary(forKey: "sehirler") ?? [String:String]()
        
        for (anahtar,deger) in gelenSehirler {
            print("Gelen Şehir : \(anahtar ) -> \(deger)")
        }
        
        //Sayac Uygulaması
        var sayac = ud.integer(forKey: "sayac")//0
        
        sayac = sayac + 1
        
        ud.set(sayac, forKey: "sayac")
        
        labelSayac.text = "Açılış Sayısı : \(sayac)"
    }


}


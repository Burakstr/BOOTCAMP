//
//  AppDelegate.swift
//  TasarimCalismasi
//
//  Created by Burak Satır on 30.09.2023.
//
import Foundation

class Kisiler {
    var ad:String?
    var yas:Int?
    var boy:Double?
    var bekar:Bool?
    
    init(){
        
    }
    
    init(ad: String, yas: Int, boy: Double, bekar: Bool) {
        self.ad = ad
        self.yas = yas
        self.boy = boy
        self.bekar = bekar
    }
}

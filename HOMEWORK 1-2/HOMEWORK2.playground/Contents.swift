import UIKit

class Fonksiyonlar {
    func mileDonustur(km:Double) -> Double {
        let mil = km * 0.621
        return mil
    }
    
    func diktorgenAlanHesapla(uzunKenar:Double,kısaKenar:Double) {
        print("Alan Hesap : \(uzunKenar * kısaKenar)")
    }
    
    func faktoriyelHesapla(sayi: Int) -> Int {
        if sayi == 0 {
            return 1
        }
        
        var sonuc = 1
        for i in 1...sayi {
            sonuc *= i
        }
        
        return sonuc
    }
    
    func eHarfiBul(kelime:String){
        var eHarfi = 0
        
        for harf in kelime {
            if harf == "e" || harf == "E"{
                eHarfi += 1
            }
        }
        print("Bulunan E Harfi : \(eHarfi)")
    }
    
    func icAciToplam(kenarSayisi:Int) -> Int{
        let icAciHesap = ((kenarSayisi - 2) * 180) / kenarSayisi
        return icAciHesap
    }
    
    func maasHesapla(gunSayisi: Int) -> Double {
        let calismaSaatiGunluk = 8
        let saatUcreti = 40.0
        let mesaiSaatUcreti = 80.0
        let mesaiSiniri = 150
        var toplamMaas: Double = 0.0

        for _ in 1...gunSayisi {
            toplamMaas += Double(calismaSaatiGunluk) * saatUcreti
        }

        if gunSayisi > mesaiSiniri {
            let mesaiSaatSayisi = gunSayisi - mesaiSiniri
            toplamMaas += Double(mesaiSaatSayisi) * mesaiSaatUcreti
        }

        return toplamMaas
    }
    
    func otoparkUcretiHesapla(sureSaat: Double) -> Double {
        let birSaatUcreti = 50.0
        let ekSaatUcreti = 10.0
        let saatSiniri = 1.0
        
        if sureSaat <= saatSiniri {
            return 0.0
        } else {
            let ekSaatler = sureSaat - saatSiniri
            let ekUcret = ekSaatler * ekSaatUcreti
            return birSaatUcreti + ekUcret
        }
    }
    

}
let f = Fonksiyonlar()

print("Mile Dönüşüm : \(f.mileDonustur(km: 30))")

f.diktorgenAlanHesapla(uzunKenar: 30, kısaKenar: 20)


print("Girilen Sayının Faktöriyeli : \(f.faktoriyelHesapla(sayi: 5))")

f.eHarfiBul(kelime: "ebireikieüçEdörteeeeeeee")

print("İç Açıların Toplamı : \(f.icAciToplam(kenarSayisi: 10))")

print("Maaş Hesapla : \(f.maasHesapla(gunSayisi: 30))")

print("Otopark Üçreti : \(f.otoparkUcretiHesapla(sureSaat: 4.5))")

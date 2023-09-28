import UIKit

class Araba {
    var renk:String?
    var hiz:Int?
    var calisiyorMu:Bool?
    
    init(){
        print("Boş init metodu çalıştı")
    }
    
    init(renk:String,hiz:Int,calisiyorMu:Bool){
        self.renk = renk//self : buldugu sınıfı temsil ediyor.Kotlin , java : this
        self.hiz = hiz
        self.calisiyorMu = calisiyorMu//Shadowing : gölgeleme
        print("Dolu init metodu çalıştı")
    }
    
    func calistir(){//Side effect
        calisiyorMu = true
        hiz = 5
    }
    
    func durdur(){
        calisiyorMu = false
        hiz = 0
    }
    
    func hizlan(kacKm:Int){
        hiz!+=kacKm
    }
    
    func yavasla(kacKm:Int){
        hiz!-=kacKm
    }
    
    func bilgiAl(){
        print("----------------------")
        print("Renk         : \(renk!)")
        print("Hız          : \(hiz!) ")
        print("Çalışıyor Mu : \(calisiyorMu!)")
    }
}


//Nesne oluşturma
var bmw = Araba(renk: "Kırmızı", hiz: 100, calisiyorMu: true)

//Değer atama
//bmw.renk = "Kırmızı"
//bmw.hiz = 100
//bmw.calisiyorMu = true

//Değer okuma
bmw.bilgiAl()
bmw.durdur()
bmw.bilgiAl()
bmw.calistir()
bmw.bilgiAl()
bmw.hizlan(kacKm: 50)
bmw.bilgiAl()
bmw.yavasla(kacKm: 20)
bmw.bilgiAl()


var sahin = Araba()

sahin.renk = "Beyaz"
sahin.hiz = 0
sahin.calisiyorMu = false

sahin.bilgiAl()
sahin.calistir()
sahin.bilgiAl()
sahin.durdur()
sahin.bilgiAl()
sahin.calistir()
sahin.bilgiAl()
sahin.hizlan(kacKm: 70)
sahin.bilgiAl()
sahin.yavasla(kacKm: 40)
sahin.bilgiAl()


class Fonksiyonlar {
    //Geri dönüş değeri olmayan ( void )
    func selamla1(){
        let sonuc = "Merhaba Ahmet"
        print(sonuc)
    }
    
    //Geri dönüş değeri olan ( return )
    func selamla2() -> String {
        let sonuc = "Merhaba Ahmet"
       return sonuc
    }
    //parametre
    func selamla3(isim:String){
        let sonuc = "Merhaba \(isim)"
        print(sonuc)
    }
    func toplama(sayi1:Int,sayi2:Int) -> Int {
        let toplam = sayi1 + sayi2
        return toplam
    }
    
    //Overloading
    func carpma(sayi1:Int,sayi2:Int) {
       print("Çarpma : \(sayi1 * sayi2)")
    }
    
    func carpma(sayi1:Double,sayi2:Double) {
       print("Çarpma : \(sayi1 * sayi2)")
    }
    
    func carpma(sayi1:Int,sayi2:Int,isim:String) {
       print("Çarpma : \(sayi1 * sayi2) - İşlemi Yapan : \(isim)")
    }
    
}
let f = Fonksiyonlar()

f.selamla1()

let gelenSonuc = f.selamla2()
print("Gelen Sonuç : \(gelenSonuc)")

f.selamla3(isim: "Zeynep")

let gelenToplam = f.toplama(sayi1: 10, sayi2: 20)
print("Gelen Toplam : \(gelenToplam)")

f.carpma(sayi1: 3, sayi2: 5, isim: "Zeynep")

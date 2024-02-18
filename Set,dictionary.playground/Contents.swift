import UIKit

// Set   : Düzensizdir.
var meyveler = Set<String>()

//Veri ekleme
meyveler.insert("Elma")   // Set yapısında veri eklerken Append değil insert kullanılır.
meyveler.insert("Armut")
meyveler.insert("Portakal")
meyveler.insert("Kivi")

print(meyveler)


for (indeks,meyve) in meyveler.enumerated(){
    print("\(indeks). --> \(meyve)")
}

print("Boş mu? --> \(meyveler.isEmpty)")
print("Kaç tane var? --> \(meyveler.count)")


meyveler.remove("Kivi")
print("\(meyveler)")





// Dictionary (map)
var iller = [Int: String] ()     // [KEY : VALUE]

// Veri Ekleme
iller[34] = "İstanbul"
iller[16] = "Bursa"
print(iller)

// Veri Okuma
print(iller[34]!)

// Veri Güncelleme
iller [16] = "Yeni Bursa"
print(iller)


for (anahtar,deger) in iller {
    print("\(anahtar) --> \(deger)")
}

iller.removeValue(forKey: 16)
print(iller)

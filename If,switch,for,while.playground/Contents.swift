import UIKit

// If

var isim : String?
var yas = 15

isim = "Selim"

if yas >= 18 {                  // Şartı karşılıyorsa
    print("Reşitsiniz")
}
else {                          // Şartı karşılamıyorsa
    print("Reşit değilsiniz")
}


if isim == "Ahmet" {
    print("Merhaba Ahmet bey")
}
else if isim == "Selim" {           // 2. bir şart eklemek istiyorsak else if kullanılır.
    print("Merhaba Selim bey")
}
else {
    print("Tanınmayan kişi")
}

// Programa giriş örneği

var kullaniciAdi = "Admin"
var sifre = 1235

if kullaniciAdi == "Admin" && sifre == 12345 {
    print("Giriş Başarılı")
}
else {
    print("Kullanıcı adı veya şifre hatalı")
}



        // Switch Yapısı  :    if yapısına benzer ancak bazen çok daha pratiktir. case sayesinde çoklu işlem yapmamıza olanak sağlar.

var gun : Int?

gun = 5

switch gun {
case 1 : print("pazatesi")
case 2 : print("salı")
case 3 : print("çarşamba")
case 4 : print("perşembe")
case 5 : print("cuma")
case 6 : print("cumartesi")
case 7 : print("pazar")
default : print("hatalı gün")
}



        // Döngüler   For in / While

// for

// 1 den 3 e kadar say
for x in 1...3 {
    print("Döngü : \(x)")
}

// 10 dan 20 ye kadar 5 er artış

for t in stride(from: 10, through: 50, by: 5) {  // Stride artış miktarını ayarlamamız icin önemlidir.
    print("Dongu 2 : \(t)")
}

// 10 dan 20 ye 5 düş

for p in stride(from: 50, through: 10, by: -5) {
    print("Döngü 3 : \(p)")
}

// while                İşlem istenilen sonuca ulaşmak için sürekli artıp başa döner


var sayac = 1

while sayac <= 3 {
    print("Dongu 5 : \(sayac)")
    sayac += 1 // Veya sayac = sayac + 1
}


// BREAK VE CONTİNUE FARKI

for z in 1...6 {            // Break verilen değere ulaştığında döngüyü durdurur.
    if z == 3 {
        break
    }
    print("Dongu 6 : \(z)")
}


for x in 1...6 {    // Continue verilen değere ulaşınca onu pas geçer ve çalışmaya devam eder.
    if x == 3 {
        continue
        }
    print("Dongu 7 : \(x)")
}

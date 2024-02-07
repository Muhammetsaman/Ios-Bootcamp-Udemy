import UIKit

// Optional : bir değişkene sonradan değer atamak istediğimizde veya boş bırakmak istediğimizde başvuracağımız şeydir


var str : String?  // Bu bir optional ifadedir. bunu boş bırakabilir veya sonradan defalarca değer atayabilirim.

str =  "Merhaba"  // Değişkenime değer atadım.



// Tanım
if str != nil {
    print(str!)   // Unwrap : ifadeyi unwrap etmez isem çıktıyı istediğim gibi alamam.
} else {
    print("str nil ifade içeriyor")
}



// Pratik kullanım

if let temp = str {
    print(temp)  // Let ile kullanımda otomatik unwrap olur. yaygın kullanım bu dur. Sonradan değer verilemez cünkü let sabittir.
}else {
    print("Str Nil değer içeriyor")
}



if var tempi = str {
    print(tempi)
    tempi = "naber"         // Ancak var ile kullanımda sonradan değer atayabiliriz.oto unrwrap vardır.
    print(tempi)
}else {
    print("Str Nil değer içeriyor")
}

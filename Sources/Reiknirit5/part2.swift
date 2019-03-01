import Foundation

class Vigur {

    let x: Double
    let y: Double

    var lengd: Double {
        return sqrt(pow(x, 2)+pow(y, 2))
    }

    var halli: Double {
        return y / x
    }

    var þvervigur: Vigur {
        return Vigur(x: y, y: x*(-1) )
    }

    var stefnuhorn: Double {
        return horn(v: þvervigur)
    }

    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }

    func prenta() {
        print("X: \(x), Y: \(y)")
    }

    func summa(v: Vigur) -> Vigur {
        return Vigur(x: x + v.x, y: y + v.y)
    }

    func horn(v: Vigur) -> Double {
        return acos( ((x*v.x) + (y*v.y)) / (sqrt( pow(x, 2) * pow(y, 2) ) * sqrt( pow(x, 2) * pow(y, 2) )) )
    }
   
}

func runPart2() {
    let v1 = Vigur(x: 1.0, y: 3.0)
    v1.prenta()
    print("Lengd: \(v1.lengd)")
    print("Halli: \(v1.halli)")
    let vþ = v1.þvervigur
    print("Þvervigur: ", terminator: "")
    vþ.prenta()
    print("Stefnuhorn: \(v1.stefnuhorn)")
    let v2 = Vigur(x: -3, y: 1)
    print("Horn milli vigranna: \(v2.horn(v: v1))")
    let v3 = v1.summa(v: v2)
    print("Summa: ", terminator: "")
    v3.prenta()
}

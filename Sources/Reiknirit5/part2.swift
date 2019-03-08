import Foundation

class Vigur {

    let x: Double
    let y: Double

    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }

    var lengd: Double {
        return sqrt(pow(x, 2)+pow(y, 2)).rounded(decimals: 2)
    }

    var halli: Double {
        return y / x
    }

    var þvervigur: Vigur {
        return Vigur(x: y, y: x*(-1) )
    }

    var stefnuhorn: Double {
        var result = deg(atan(abs(y)/abs(x))).rounded(decimals: 2)

        switch GraphPosition.find(x: x, y: y) {
            case .PP: break
            case .NP: result += 90
            case .NN: result += 180
            case .PN: result -= 90
            default: break
        }

        return result
    }

    func prenta() {
        print("X: \(x), Y: \(y)")
    }

    func summa(v: Vigur) -> Vigur {
        return Vigur(x: x + v.x, y: y + v.y)
    }

    func horn(v: Vigur) -> Double {
        return deg(acos(((x*v.x) + (y*v.y)) / (lengd * v.lengd)))
    }
   
}

func runPart2() {
    let v1 = Vigur(x: 4.0, y: 4.0)
    v1.prenta()
    print("Lengd: \(v1.lengd)")
    print("Halli: \(v1.halli)")
    let vþ = v1.þvervigur
    print("Þvervigur: ", terminator: "")
    vþ.prenta()
    print("Stefnuhorn: \(v1.stefnuhorn)")
    let v2 = Vigur(x: 1.0, y: 0.0)
    print("Horn milli vigranna: \(v2.horn(v: v1))")
    let v3 = v1.summa(v: v2)
    print("Summa: ", terminator: "")
    v3.prenta()
}

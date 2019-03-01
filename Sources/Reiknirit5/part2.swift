import Foundation

class Vigur {

    var x: Int
    var y: Int

    var lengd: Int {
        return sqrt(x+y)
    }

    var halli: Int {
        return -1
    }

    var þvervigur: Int {
        return -1
    }

    var stefnuhorn: Int {
        return -1
    }

    var horn: Int {
        return -1
    }

    init(x: Int, y: Int) 
    {
        self.x = x
        self.y = y
    }

    func prenta() 
    {

    }

    func summa(v: Vigur) -> Vigur
    {
        return Vigur(x: x + v.x, y: y + v.y)
    }

    

}

class Node {

    var data: Int
    var nxt: Node? = nil
    var prv: Node? = nil

    init(d: Int) {
        self.data = d
    }

    func append(d: Int) -> Bool {
        if let nxt = self.nxt {
            return nxt.append(d: d)
        } else {
            let curr = Node(d: d)
            self.nxt = curr
            curr.prv = self
            return true
        }
    }

    func printList() {
        print(data, terminator: " ")
        if let nxt = self.nxt {
            nxt.printList()
        }
    }

    func find(d: Int) -> Bool {
        if d != self.data {
            guard let nxt = self.nxt else {
                return false
            }
            return nxt.find(d: d)
        } else {
            return true
        }
    }

    func delete(d: Int) -> Bool {
        if d != self.data {
            guard let nxt = self.nxt else {
                return false
            }
            return nxt.delete(d: d)
        } else {
            if let prv = self.prv {
                prv.nxt = nxt
            }
            if let nxt = self.nxt {
                nxt.prv = prv
            }
            return true
        }
    }

}

class DLL {

    var head: Node? = nil

    func push(d: Int)  {
        var curr = Node(d: d)
        if var head = self.head {
            curr.nxt = head
            head.prv = curr
        }
        self.head = curr
    }

    func append(d: Int) -> Bool {
        if var head = self.head {
            return head.append(d: d)
        } else {
            self.head = Node(d: d)
            return true
        }
    }

    func printList() {
        guard let head = self.head else {
            print("List empty")
            return
        }
        head.printList()
        print()
    }

    func find(d: Int) -> Bool {
        if let head = self.head {
            return head.find(d: d)
        } else {
            return false
        }
    }

    func delete(d: Int) -> Bool {
        if var head = self.head {
            if head.data == d {
                if let nxt = head.nxt {
                    self.head = nxt
                }
            }

            return head.delete(d: d)
        } else {
            return false
        }
    }

}

func runPart1() {
    let dbl = DLL()
    dbl.append(d: 3)
    dbl.push(d: 5)
    dbl.append(d: 7)
    dbl.append(d: 15)
    print(dbl.find(d: 30))
    dbl.printList()
    dbl.delete(d: 7)
    dbl.printList()
    /*
    dbl.append(d: 5)           // 5
    dbl.append(d: 7)           // 5 7         
    dbl.push(d: 1)             // 1 5 7 
    dbl.push(d: 0)             // 0 1 5 7 
    dbl.append(d: 10)          // 0 1 5 7 10
    dbl.printList()         
    print()
    print(dbl.delete(d: 10))   // 0 1 5 7
    dbl.printList() 
    print(dbl.find(d: 5))      // True
    print(dbl.find(d: 10))     // False
    */
}
import Cocoa

var str = "Hello, playground"

var c = Croupier()

c.cards

c.addCard(.ace)
c.addCard(.ten)

c.blackJack()
c.stood()
c.bust()

c.addCard(.ten)
c.addCard(.two)
c.blackJack()
c.stood()
c.bust()

c.clean()
c.cards
c.blackJack()
c.stood()
c.bust()

c.clean()
for _ in 1...12 {
    c.addCard(.ace)
}
c.addCard(.ten)
c.blackJack()
c.stood()
c.bust()

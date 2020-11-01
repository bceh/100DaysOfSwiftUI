import SwiftUI

struct ContentView: View {
    let moves = ["Rock", "Paper", "Scissors"]
    @State private var move = 2
    @State private var isWin = true
    @State private var score = 0
    
    var body: some View {
        VStack{
            VStack{
                Text("your score is \(score)")
                Text("My choice is \(moves[move])")
                Text("You need to \(isWin ? "win" : "lose")")
            }
            
            HStack{
                ForEach(0 ..< 3) { number in
                    Button(action: {
                        self.moveTapped(number)
                    }) {
                        Text(moves[number])
                    }
                }
            }
        }
    }
    
    func moveTapped (_ number: Int) {
        var isRealWin: Bool {
            if (number % 3) == ((move + 1) % 3) {
                return true
            } else {
                return false
            }
        }
        if isRealWin == isWin {
            score += 1
        } else {
            score -= 1
        }
        isWin = Bool.random()
        move = Int.random(in: 0...2)
    }
    
    

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
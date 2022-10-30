
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ScrollView {
                VStack {
                    HStack {
                        NumberViewModel(Number: 1, numberColor: .red)
                        NumberViewModel(Number: 2, numberColor: .blue)
                        NumberViewModel(Number: 3, numberColor: .green)
                        NumberViewModel(Number: 4, numberColor: .yellow)
                        NumberViewModel(Number: 5, numberColor: .gray)
                        NumberViewModel(Number: 6, numberColor: .purple)
                    }
                    ForEach(0..<30) {
                        Text("\($0 + 1)行目")
                            .font(.largeTitle)
                    }
                }
            }
        }
    }
}

struct NumberViewModel: View {
    let Number: Int
    let numberColor: Color
    
    var body: some View {
        VStack {
            Image(systemName: "die.face.\(Number)")
                .resizable()
            .frame(width: 150, height: 150)
            Text("\(Number)")
                .font(.title)
                .foregroundColor(numberColor)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  Dicee-SwiftUI
//
//  Created by Kittisak Panluea on 28/6/2565 BE.
//

import SwiftUI

struct ContentView: View {
//    @State เป็นตัวที่อนุญาตให้เราสามารถเปลี่ยนแปลงค่าในตัวแปรได้ เหมือนกับตัว mutating นั่นแหละ
    @State var leftDiceNumber : Int = 1
    @State var rightDiceNumber :Int = 2
    
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack() {
                Image("diceeLogo")
                Spacer()
                HStack {
                    DiceView(diceNumber:leftDiceNumber)
                    DiceView(diceNumber:rightDiceNumber)
                }
                .padding(.all)
                Spacer()
                Button("Roll") {
                    leftDiceNumber = Int.random(in: 1...6)
                    rightDiceNumber = Int.random(in: 1...6)
                }
                .tint(.red)
                .font(.system(size: 30))
                .buttonStyle(.bordered)
                .controlSize(.large)
                .padding(.horizontal)
            }
        }
    }
}

struct DiceView: View {
    
    let diceNumber : Int
    
    var body: some View {
        Image("dice\(diceNumber)")
            .resizable()
        //  1 หมายถึงให้ความกว้างกับสูงเท่ากันน่ะ
            .aspectRatio(1 , contentMode: .fit)
            .padding(30)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



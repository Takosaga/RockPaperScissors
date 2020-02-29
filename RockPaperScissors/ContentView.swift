//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Gonzalo Gamez on 2/28/20.
//  Copyright © 2020 Gamez. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var choices = ["🗿", "📄", "✂️"]
    
    @State private var showingScore = false
    @State private var score = 0
    @State private var results = ""
    @State private var cpuChoice = Int.random(in: 0...2)
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .gray]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
        
            VStack(spacing: 30){
                VStack{
                    Text("Choose")
                        .font(.largeTitle)
                    
                    Text("")
                    
                    Text("🗿(Rock) 📄(Paper) ✂️(Scissors)")
                    .foregroundColor(.black)
                    
                    
                }
                
                ForEach(0 ..< 3) { number in
                            Button(action: {
                                self.playerChoice(number)
                                //flag was tapped
                            }) {
                                
                                    Text(self.choices[number])
                                
                                        .clipShape(Capsule())
                                    .overlay(Capsule().stroke(Color.black,lineWidth:  1))
                                    .shadow(color: .black, radius: 2)
                            }
                        }
                        
                            Text("Your score is \(score)")
                                .foregroundColor(.white)
                        
                        Spacer()
                    }
                }
                .alert(isPresented: $showingScore) {
                    Alert(title: Text(results), message: Text("Your score is \(score)"), dismissButton: .default(Text("OK")) {
                        self.resetCpuChoice()
                    } )
                }
            }
    
    
    
    func playerChoice( _ number: Int){
        
        if choices[number] == choices[cpuChoice] {
            results = "You both choose \(choices[number]) "
        }
        
        showingScore = true
    }
    
    
    func resetCpuChoice() {
        cpuChoice = Int.random(in: 0...2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

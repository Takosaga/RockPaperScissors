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
    @State private var cpuChoice = Int.random(in: 0...2)
    
    var body: some View {
        VStack(spacing: 30){
            VStack{
                Text("Choose")
                    .font(.largeTitle)
                
                Text("")
                
                Text("🗿(Rock) 📄(Paper) ✂️(Scissors)")
                .foregroundColor(.black)
                
                
            }
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

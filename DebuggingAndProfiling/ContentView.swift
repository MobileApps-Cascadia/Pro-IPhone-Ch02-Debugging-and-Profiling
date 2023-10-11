//
//  ContentView.swift
//  DebuggingAndProfiling
//
//  Created by Mike Panitz on 10/3/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            OccassionalUpdate()
                .tabItem {
                    Image(systemName: "smiley")
                    Text("OccassionalUpdate")
                }
            StressTest()
                .tabItem {
                    Image(systemName: "exclamationmark.arrow.triangle.2.circlepath")
                    Text("StressTest")
                }
            DebugThisCode()
                .tabItem {
                    Image(systemName: "ant")
                    Text("DebugThisCode")
                }
            
            // The algorithm for converting fahrenheit to celsius was incorrect, and the resulting variable declaration needed to be changed from var to let.
            
            //ORIGINAL - var cel = (fah + 32) * 5 / 9
            //CORRECT - let cel = (fah - 32) * 5 / 9
            //ORIGINAL - var fah = (cel * 5 / 9 ) + 32
            //CORRECT - let fah = (cel * 9 / 5) + 32
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

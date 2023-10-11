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
            // 2 - The app redrew its views 7 times in the 30 sec OccassionalUpdate was in the foreground and 2,730 times while stress test was in the foreground
            
            // 3 - In the OccationalUpdate, starting took 19.82s in the 30sec it was in the foreground. In stressTest, it took 5.96 sec. So while the views were drawn more times during the stress test, those were updating faster so it didn't use as much CPU.
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

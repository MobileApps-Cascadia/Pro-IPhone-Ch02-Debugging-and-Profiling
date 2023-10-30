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
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



// Converting f to c required a variable change from var to let.

//OG - var cel = (fah + 32) * 5 / 9
//NEW - let cel = (fah - 32) * 5 / 9
//OG - var fah = (cel * 5 / 9 ) + 32
//NEW - let fah = (cel * 9 / 5) + 32
//2. Foreground in OccassionalUpdate redrawn 7 times, Stress test continues to grow while in foreground
//3. //OccasionalUpdate shows a hang after button click, Stress test runtime is about 28ms per run


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

// Calculating temp was using the wrong type being var instead of let. Also its calulations was wrong.

 //Original -> var cel = (fah + 32) * 5 / 9
 //Correct -> let cel = (fah - 32) * 5 / 9
 //Original -> var fah = (cel * 5 / 9 ) + 32
 //Correct -> let fah = (cel * 9 / 5) + 32

 //2. Foreground in OccassionalUpdate was redrawn 7 times and stress test continues to grow while in foreground

 //3. OccasionalUpdate takes awhile after button click. However Stress test runtime is about a quarter of the time.

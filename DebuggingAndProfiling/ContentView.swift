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
/* 1. after debugging the code I did not find any major issue. I think the program is working fine. I was confising how to analyse the information.
 
   2. After using the profile, i saw the number of screen refreshes is zero. when I switched to the stress test, it went to fully agreed.
 
 3. In the time profiler, I can see how many time the numbers  changed. 
 
 
 
 */

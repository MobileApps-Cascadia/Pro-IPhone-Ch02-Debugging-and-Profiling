
//
//  ContentView.swift
//  DebuggingAndProfiling
//
//  Created by Mike Panitz on 10/3/23.
//

import SwiftUI

class FrequentUpdater: ObservableObject {
    var timer: Timer?

    init() {
        timer = Timer.scheduledTimer(
            withTimeInterval: 0.01,
            repeats: true
        ) { _ in
            self.objectWillChange.send()
        }
    }
}

struct StressTest: View {
    @StateObject private var updater = FrequentUpdater()
    @State private var tapCount = 0

    var body: some View {
        VStack {
            Text("\(UUID().uuidString)")

            Button("Tap count: \(tapCount)") {
                tapCount += 1
            }
        }
    }
}

struct StressTest_Previews: PreviewProvider {
    static var previews: some View {
        StressTest()
    }
}

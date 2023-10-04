//
//  OccassionalUpdate.swift
//  DebuggingAndProfiling
//
//  Created by Mike Panitz on 10/3/23.
//

import SwiftUI

func TheSlowFunction() {
    var changeThisVar = 0
    for _ in 0 ... 100000 {
        for j in 0 ... 100000 {
            changeThisVar = j
            print(j)
        }
    }
}

func CallTheSlowFunction() {
    print("About to call the slow function")
    TheSlowFunction()
    print("Done with the slow function")
}

struct OccassionalUpdate: View {
    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            Button(action: {
                // Code to be executed when the button is tapped
                print("Button tapped! Message printed to debug console.")
                CallTheSlowFunction()
            }) {
                Text("Tap Me!")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.blue)
                    .cornerRadius(10)
            }
        }
    }
}

struct OccassionalUpdate_Previews: PreviewProvider {
    static var previews: some View {
        OccassionalUpdate()
    }
}


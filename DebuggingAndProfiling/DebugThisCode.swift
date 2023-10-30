//
//  DebugThisCode.swift
//  DebuggingAndProfiling
//
//  Created by Mike Panitz on 10/3/23.
//

import SwiftUI

struct DebugThisCode: View {
    @State var fahrenheitTemp = ""
    @State var celsiusTemp = ""
    var body: some View {
        VStack {
            Text("Fahrenheit to Celsius")
                .font(.largeTitle)
            Spacer()
            VStack {
                Text("Fahrenheit:")
                TextField("Temperature in Fahrenheit", text: $fahrenheitTemp)
                Button(action: {
                    print("Fah changed to \(fahrenheitTemp)")
                    if let fah = Double(fahrenheitTemp) {
                       print("Value is \(fah)")
                        let cel = (fah - 32) * 5 / 9
                        celsiusTemp = String(cel)
                   } else {
                       print("Not a valid number")
                   }
                }) {
                    Text("Convert to Celsius")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
            }.padding(.bottom)
            
            VStack {
                Text("Celsius:")
                TextField("Temperature in Celsius", text: $celsiusTemp)
                Button(action: {
                    if let cel = Double(celsiusTemp) {
                        let fah = (cel * 5 / 9 ) + 32
                        fahrenheitTemp = String(fah)
                   } else {
                       print("Not a valid number")
                   }
                }) {
                    Text("Convert to Fahrenheit")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(10)
                }
  
            }.padding(.top)
            Spacer()
        }
        .padding()
    }
}

struct DebugThisCode_Previews: PreviewProvider {
    static var previews: some View {
        DebugThisCode()
    }
}

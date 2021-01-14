//
//  ContentView.swift
//  SwiftUIButton
//
//  Created by Hua Son Tung on 14/01/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {
            print("Delete button was tapped!")
        }) {
            Label(
                title: {
                    Text("Delete")
                        .font(.title)
                        .fontWeight(.semibold)
                },
                icon: {
                    Image(systemName: "trash")
                        .font(.title)
                }
            )
            .frame(minWidth: 0, maxWidth: .infinity)
            .padding()
            .background(LinearGradient(gradient: Gradient(colors: [Color("DarkGreen"), Color("LightGreen")]), startPoint: .leading, endPoint: .trailing))
            .foregroundColor(.white)
            .cornerRadius(40)
            .shadow(color: .gray, radius: 10, x: 5, y: 5)
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

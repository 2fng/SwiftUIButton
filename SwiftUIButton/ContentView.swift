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
            //tapped
        }) {
            Image(systemName: "plus")
        }
        .buttonStyle(PlusButtonStyle())
    }
}

struct PlusButtonStyle : ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.white)
            .font(.system(size: 60))
            .padding()
            .background(Color.purple)
            .clipShape(Circle())
            .rotationEffect(configuration.isPressed ? .degrees(135) : .zero)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

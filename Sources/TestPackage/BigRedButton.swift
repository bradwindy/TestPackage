//
//  BigRedButton.swift
//
//
//  Created by Bradley Windybank on 5/08/22.
//

import SwiftUI

struct BigRedButton: View {
    // MARK: Internal

    var body: some View {
        Button("Tap Me") {
            // animationAmount += 1
        }
        .font(.system(.title2).bold())
        .padding(40)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .overlay(
            Circle()
                .stroke(.red)
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .animation(
                    .easeInOut(duration: 1)
                        .repeatForever(autoreverses: false),
                    value: animationAmount
                )
        )
        .onAppear {
            animationAmount = 2
        }
    }

    // MARK: Private

    @State private var animationAmount = 1.0
}

struct BigRedButton_Previews: PreviewProvider {
    static var previews: some View {
        BigRedButton()
    }
}

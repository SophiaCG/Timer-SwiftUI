//
//  DurationBox.swift
//  Timer-SwiftUI
//
//  Created by Sophia Gorgonio on 8/12/22.
//

import Foundation
import SwiftUI

struct NumberTextBox: View {
    
    @Binding var selectedColor: Int
    var number: Int
    var text: String
    var width: CGFloat
    
    var body: some View {
        
        VStack {
            VStack {
                Text("\(number)")
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                Text(text)
                    .font(.system(size: 15))
                    .bold()
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
            }.background(
                RoundedRectangle(cornerRadius: 5, style: .continuous)
                    .fill(Color("color\(selectedColor)"))
                    .brightness(-0.05)
                    .frame(width: width, height: 120)
            )
        }.frame(width: width, height: 120)
    }
}

struct DurationBox_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 50) {
            NumberTextBox(selectedColor: .constant(2), number: 25, text: "POMODORO", width: UIScreen.main.bounds.size.width * 0.3)
            NumberTextBox(selectedColor: .constant(2), number: 25, text: "POMODORO", width: UIScreen.main.bounds.size.width * 0.3)
            NumberTextBox(selectedColor: .constant(2), number: 25, text: "POMODORO", width: UIScreen.main.bounds.size.width * 0.3)

        }
    }
}

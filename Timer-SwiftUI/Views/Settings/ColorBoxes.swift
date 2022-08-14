//
//  ColorBoxes.swift
//  Timer-SwiftUI
//
//  Created by Sophia Gorgonio on 8/13/22.
//

import Foundation
import SwiftUI

struct ColorBoxes: View {
    
    @Binding var selectedColor: Int
    var gridItemLayout = [GridItem(), GridItem(), GridItem(), GridItem()]
    var colorsNum = 19
    
    var body: some View {
        
        RoundedRectangle(cornerRadius: 5, style: .continuous)
            .fill(Color("color\(selectedColor)"))
            .brightness(-0.05)
            .frame(width: UIScreen.main.bounds.width * 0.93, height: UIScreen.main.bounds.height * 0.32)
            .overlay(
                LazyHGrid(rows: gridItemLayout, spacing: 15) {
                    ForEach(0...colorsNum, id: \.self) { color in
                        ZStack {
                            RoundedRectangle(cornerRadius: 5, style: .continuous)
                                .fill(Color("color\(color % colorsNum)"))
                            .frame(width: 55, height: 55)
                            
                            if color == selectedColor {
                                Image(systemName: "checkmark.circle.fill")
                                    .font(.system(size: 35))
                                    .foregroundColor(.white)
                            }
                        }.onTapGesture {
                            selectedColor = color
                        }

                    }
                }.frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.3)

            )
    }
}

struct ColorBoxes_Previews: PreviewProvider {
    static var previews: some View {
        ColorBoxes(selectedColor: .constant(2))
    }
}

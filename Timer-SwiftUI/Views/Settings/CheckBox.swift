//
//  CheckBox.swift
//  Timer-SwiftUI
//
//  Created by Sophia Gorgonio on 8/12/22.
//

import Foundation
import SwiftUI

struct CheckBox: View {
    
    @Binding var selectedColor: Int
    @Binding var selectedBox: Int
    @Binding var startBreaks: Bool
    @Binding var showNotifs: Bool

    var text: String
    
    var body: some View {
        
        VStack {
            VStack {
                HStack(spacing: 20) {
                    Image(systemName: "checkmark.circle.fill")
                        .font(.system(size: 60))
                        .foregroundColor(.white)
                        .opacity(startBreaks && selectedBox == 1 || showNotifs && selectedBox == 2 ? 1 : 0.5)
                        .onTapGesture {
                            if selectedBox == 1 {
                                startBreaks = true
                            } else {
                                showNotifs = true
                            }
                        }
                    Image(systemName: "multiply.circle.fill")
                        .font(.system(size: 60))
                        .foregroundColor(.white)
                        .opacity(startBreaks && selectedBox == 1 || showNotifs && selectedBox == 2 ? 0.5 : 1)
                        .onTapGesture {
                            if selectedBox == 1 {
                                startBreaks = false
                            } else {
                                showNotifs = false
                            }

                        }
                }.frame(width: 380, height: 80)
                
                Text(text)
                    .font(.system(size: 15))
                    .bold()
                    .foregroundColor(.white)

            }.background(
                RoundedRectangle(cornerRadius: 5, style: .continuous)
                    .fill(Color("color\(selectedColor)"))
                    .brightness(-0.05)
                    .frame(width: 400, height: 140)
            )
        }.frame(width: 400, height: 140)
    }
}

struct CheckBox_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 50) {
            CheckBox(selectedColor: .constant(2), selectedBox: .constant(1), startBreaks: .constant(true), showNotifs: .constant(true), text: "AUTOSTART BREAKS")
            CheckBox(selectedColor: .constant(2), selectedBox: .constant(1), startBreaks: .constant(true), showNotifs: .constant(true), text: "AUTOSTART BREAKS")
            CheckBox(selectedColor: .constant(2), selectedBox: .constant(1), startBreaks: .constant(true), showNotifs: .constant(true), text: "AUTOSTART BREAKS")
        }
    }
}

//
//  CheckBox.swift
//  Timer-SwiftUI
//
//  Created by Sophia Gorgonio on 8/12/22.
//

import Foundation
import SwiftUI

struct CheckBox: View {
    
    var text: String
    
    var body: some View {
        
        VStack {
            VStack {
                HStack(spacing: 20) {
                    Image(systemName: "checkmark.circle.fill")
                        .font(.system(size: 60))
                        .foregroundColor(.white)
                    Image(systemName: "multiply.circle.fill")
                        .font(.system(size: 60))
                        .foregroundColor(.white)
                }.frame(width: 380, height: 80)
                
                Text(text)
                    .font(.system(size: 15))
                    .bold()
                    .foregroundColor(.white)

            }.background(
                RoundedRectangle(cornerRadius: 5, style: .continuous)
                    .fill(Color("color2"))
                    .brightness(-0.05)
                    .frame(width: 400, height: 140)
            )
        }.frame(width: 400, height: 140)
    }
}

struct CheckBox_Previews: PreviewProvider {
    static var previews: some View {
        VStack(spacing: 50) {
            CheckBox(text: "AUTOSTART BREAKS")
            CheckBox(text: "AUTOSTART BREAKS")
            CheckBox(text: "AUTOSTART BREAKS")
        }
    }
}

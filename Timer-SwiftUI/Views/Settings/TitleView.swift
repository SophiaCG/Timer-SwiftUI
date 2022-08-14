//
//  TitleView.swift
//  Timer-SwiftUI
//
//  Created by Sophia Gorgonio on 8/13/22.
//

import Foundation
import SwiftUI

struct TitleView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.system(size: 15))
            .bold()
            .foregroundColor(Color("color2"))
            .brightness(-0.2)
    }
}

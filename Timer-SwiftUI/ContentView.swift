//
//  ContentView.swift
//  Timer-SwiftUI
//
//  Created by Sophia Gorgonio on 8/11/22.
//

import SwiftUI
import CoreData
import UserNotifications

struct ContentView: View {
    
    let width = UIScreen.main.bounds.size.width
    
    var body: some View {
        
        ZStack {
            Color("color2")
                .ignoresSafeArea()
            
            ScrollView {
                
                VStack(spacing: 20) {
                    
                    TitleView(text: "DURATIONS")
                    
                    HStack(spacing: 20) {
                        NumberTextBox(number: 25, text: "POMODORO", width: width * 0.28)
                        NumberTextBox(number: 5, text: "BREAK", width: width * 0.28)
                        NumberTextBox(number: 15, text: "LONG BREAK", width: width * 0.28)
                    }
                    
                    TitleView(text: "COLOR THEMES")

                    ColorBoxes()
                    
                    TitleView(text: "BREAKS & GOALS")

                    HStack(spacing: 20) {
                        NumberTextBox(number: 4, text: "POMODOROS UNTIL LONG BREAK", width: width * 0.45)
                        NumberTextBox(number: 8, text: "DAILY GOAL", width: width * 0.45)
                    }
                    
                    TitleView(text: "SOUND THEMES")

                    CheckBox(text: "AUTOSTART BREAKS")
                    CheckBox(text: "SHOW NOTIFICATION")
                    
                }
            }
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

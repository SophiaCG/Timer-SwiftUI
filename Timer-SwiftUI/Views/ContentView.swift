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
    
    @State var selectedColor: Int = 2
    @State var startBreaks: Bool = true
    @State var showNotifs: Bool = true
    @State var selectedBox: Int = 1
    @State var pomodoroNum: String = "25"
    @State var breakNum: String = "5"
    @State var longBreakNum: String = "15"
    @State var pomodoroGoal: String = "14"
    @State var dailyGoal: String = "8"
    let width = UIScreen.main.bounds.size.width

    var body: some View {
        
        ZStack {
            Color("color\(selectedColor)")
                .ignoresSafeArea()
            
            ScrollView {
                
                VStack(spacing: 20) {
                    
                    TitleView(selectedColor: $selectedColor, text: "DURATIONS")
                    
                    HStack(spacing: 20) {
                        NumberTextBox(selectedColor: $selectedColor, number: $pomodoroNum, text: "POMODORO", width: width * 0.28)
                        NumberTextBox(selectedColor: $selectedColor, number: $breakNum, text: "BREAK", width: width * 0.28)
                        NumberTextBox(selectedColor: $selectedColor, number: $longBreakNum, text: "LONG BREAK", width: width * 0.28)
                    }
                    
                    TitleView(selectedColor: $selectedColor, text: "COLOR THEMES")

                    ColorBoxes(selectedColor: $selectedColor)
                    
                    TitleView(selectedColor: $selectedColor, text: "GOALS")

                    HStack(spacing: 20) {
                        NumberTextBox(selectedColor: $selectedColor, number: $pomodoroGoal, text: "POMODOROS UNTIL LONG BREAK", width: width * 0.45)
                        NumberTextBox(selectedColor: $selectedColor, number: $dailyGoal, text: "DAILY GOAL", width: width * 0.45)
                    }
                    
                    TitleView(selectedColor: $selectedColor, text: "SOUND THEMES")

                    CheckBox(selectedColor: $selectedColor, selectedBox: .constant(1), startBreaks: $startBreaks, showNotifs: $showNotifs, text: "AUTOSTART BREAKS")
                    CheckBox(selectedColor: $selectedColor, selectedBox: .constant(2), startBreaks: $startBreaks, showNotifs: $showNotifs, text: "SHOW NOTIFICATION")

                }
            }
        }.onTapGesture {
            hideKeyboard()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
    }
}

#if canImport(UIKit)
extension View {
    func hideKeyboard() {
        UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
#endif



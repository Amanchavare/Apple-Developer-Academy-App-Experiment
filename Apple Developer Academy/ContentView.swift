//
//  ContentView.swift
//  Apple Developer Academy
//
//  Created by Alistair Albus Pines de Montmollin on 2025-01-30.
//

import SwiftUI
import SwiftData

struct ContentView: View {

    var body: some View {
		
		TabView {
			Tab("Home", systemImage: "house.fill") {
				HomeTabView()
				//.foregroundStyle(Color.green)
			}
			Tab("Academy", systemImage: "building.columns.fill") {
				AcademyTabView()
			}
			Tab("Community", systemImage: "person.3.sequence.fill") {
				CommunityTabView()
			}
			Tab("Hogwarts", systemImage: "hourglass") {
				HogwartsTabView()
			}
			Tab("Food", systemImage: "carrot.fill") {
				FoodTabView()
			}
//			Tab("Settings", systemImage: "gear") {
//				SettingsTabView()
//			}
	
		}
		
            
    } //MARK: END OF BODY
}

#Preview {
    ContentView()
}

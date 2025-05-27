//
//  EventsView.swift
//  Apple Developer Academy
//
//  Created by Alistair Albus Pines de Montmollin on 2025-02-04.
//

import SwiftUI

struct EventsView: View {
    var body: some View {
		NavigationStack {
			ScrollView {
				Text("Event 1")
				Text("Event 2")
				Text("Event 3")
			}
			.navigationTitle("Events")
		}
		
       


    }
}

#Preview {
    EventsView()
}

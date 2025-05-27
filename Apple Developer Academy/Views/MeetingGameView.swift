//
//  MeetingGameView.swift
//  Apple Developer Academy
//
//  Created by Alistair Albus Pines de Montmollin on 2025-02-04.
//

import SwiftUI

struct MeetingGameView: View {
    var body: some View {
		NavigationStack {
			Text("This game will randomly select a student for you to meet for 10 minutes.")
				.padding(40)
			Spacer()
			
				.navigationTitle("Meeting Game")
		}
		
		
       
    }
}

#Preview {
    MeetingGameView()
}

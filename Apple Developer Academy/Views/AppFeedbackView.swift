//
//  AppFeedbackView.swift
//  Apple Developer Academy
//
//  Created by Alistair Albus Pines de Montmollin on 2025-02-04.
//


import SwiftUI

struct AppFeedbackView: View {
	var body: some View {
		
		NavigationStack {
			VStack {
				TextField("My Feedback to the Apple Developer Academy App Developers", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
				
				
				Button("Send Feedback Now!") {
					
				}
			} .padding()
				.navigationTitle("App Feedback")
		}
		
		
		
		
		
	}
}

#Preview {
	AppFeedbackView()
}

//
//  AcademyFeedbackView.swift
//  Apple Developer Academy
//
//  Created by Alistair Albus Pines de Montmollin on 2025-02-04.
//

import SwiftUI

struct AcademyFeedbackView: View {
	var body: some View {
		
		NavigationStack {
			VStack {
				TextField("My Feedback to the Academy", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
				
				
				Button("Send Feedback Now!") {
					
				}
			} .padding()
				.navigationTitle("Academy Feedback")
		}
		
		
		
		
		
	}
}

#Preview {
	AcademyFeedbackView()
}

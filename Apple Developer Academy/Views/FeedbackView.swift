//
//  FeedbackView.swift
//  Apple Developer Academy
//
//  Created by Alistair Albus Pines de Montmollin on 2025-02-04.
//

import SwiftUI

struct FeedbackView: View {
    var body: some View {
		
		NavigationStack {
			List {
				
				
				Section() {
					NavigationLink(destination: AcademyFeedbackView()) {
						HStack {
							Image(systemName: "apple.logo")
								.foregroundStyle(Color.blue)
							Text("Feedback for the Academy")
							
						}
					}
					
					
					NavigationLink(destination: AppFeedbackView()) {
						HStack {
							Image(systemName: "macbook")
								.foregroundStyle(Color.blue)
							Text("Feedback for the App Developers")
							
						}
					}
				}
			}
			.navigationTitle("Feedback")
		}
		
		
		
		

    }
}

#Preview {
    FeedbackView()
}

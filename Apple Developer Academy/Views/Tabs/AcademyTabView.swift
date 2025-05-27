//
//  AcademyTabView.swift
//  Apple Developer Academy
//
//  Created by Alistair Albus Pines de Montmollin on 2025-02-27.
//

import SwiftUI

struct AcademyTabView: View {
    var body: some View {
		NavigationStack {
			List {
				Section(header: Text("")) {
					NavigationLink(destination: WelcomeGuideView()) {
						HStack {
							Image(systemName: "megaphone.fill")
								.foregroundStyle(Color.blue)
							Text("Announcements")
							
						}
					}
					
					NavigationLink(destination: WelcomeGuideView()) {
						HStack {
							Image(systemName: "signpost.right.and.left.fill")
								.foregroundStyle(Color.blue)
							Text("Welcome Guide")
							
						}
					}
					
					NavigationLink(destination: CoursesView()) {
						Image(systemName: "books.vertical.fill")
							.foregroundStyle(Color.blue)
						Text("Courses")
					}
					
					NavigationLink(destination: WikiView()) {
						Image(systemName: "calendar")
							.foregroundStyle(Color.blue)
						Text("Calendar")
					}
					
					NavigationLink(destination: MapView()) {
						Image(systemName: "map.fill")
							.foregroundStyle(Color.blue)
						Text("Map")
					}
					
					NavigationLink(destination: WikiView()) {
						Image(systemName: "app.connected.to.app.below.fill")
							.foregroundStyle(Color.blue)
						Text("Self Evaluation")
					}
				}
				
				
				
			}  //MARK: END OF LIST
			
			
			.toolbar {
				ToolbarItem(placement: .navigationBarLeading) {
					Text("Level 5")
						.bold()
				}
				
				ToolbarItem(placement: .principal) {
					Text("100 Points")
						.bold()
				}
				
				ToolbarItem(placement: .navigationBarTrailing) {
					NavigationLink(destination: ProfileView()){
						Image(systemName: "person.circle.fill")
							.resizable()
							.font(.title2)
					}
					
				}
				
			} //MARK: END OF TOOLBAR
			
			.navigationTitle("Academy")
		} // MARK: END OF NAVIGATION STACK
		
    }
}

#Preview {
    AcademyTabView()
}

//
//  CommunityTabView.swift
//  Apple Developer Academy
//
//  Created by Alistair Albus Pines de Montmollin on 2025-02-27.
//

import SwiftUI

struct CommunityTabView: View {
    var body: some View {
		
		NavigationStack {
			List {
				Section(header: Text("")) {
					NavigationLink(destination: PeopleView()) {
						Image(systemName: "person.fill")
							.foregroundStyle(Color.green)
						Text("People")
					}
					
					NavigationLink(destination: TeamsView()) {
						Image(systemName: "person.3.fill")
							.foregroundStyle(Color.green)
						Text("Teams")
					}
					
					NavigationLink(destination: WikiView()) {
						Image(systemName: "iphone.app.switcher")
							.foregroundStyle(Color.green)
						Text("Student Apps")
					}
				}
				
				Section {
					
					NavigationLink(destination: WikiView()) {
						Image(systemName: "note.text")
							.foregroundStyle(Color.green)
						Text("Wiki")
					}
					
					NavigationLink(destination: ChatView()) {
						Image(systemName: "person.2.wave.2.fill")
							.foregroundStyle(Color.green)
						Text("Chat")
					}
					
					NavigationLink(destination: ChatView()) {
						Image(systemName: "photo.on.rectangle.angled.fill")
							.foregroundStyle(Color.green)
						Text("Photos")
					}
					
					NavigationLink(destination: EventsView()) {
						Image(systemName: "theatermasks.fill")
							.foregroundStyle(Color.green)
						Text("Events")
					}
					
					NavigationLink(destination: EventsView()) {
						Image(systemName: "gamecontroller.fill")
							.foregroundStyle(Color.green)
						Text("Clubs")
					}
					
					NavigationLink(destination: WikiView()) {
						Image(systemName: "bed.double.fill")
							.foregroundStyle(Color.green)
						Text("Accommodation")
					}
					
					NavigationLink(destination: FeedbackView()) {
						Image(systemName: "paperplane.fill")
							.foregroundStyle(Color.green)
						Text("Send Feedback")
					}
					
					NavigationLink(destination: HelpView()) {
						Image(systemName: "questionmark.circle.fill")
							.foregroundStyle(Color.green)
						Text("Help")
					}
					
					NavigationLink(destination: HelpView()) {
						Image(systemName: "globe.europe.africa.fill")
							.foregroundStyle(Color.green)
						Text("Apple Developer Academies")
					}
					
					
				}
				
				Section(header: Text("Meet the Community Games"), footer: Text("You could meet your next best friend! Or Francesco number 12.")) {
					NavigationLink(destination: MeetingGameView()) {
						Image(systemName: "hammer.fill")
							.foregroundStyle(Color.green)
						Text("Break My Ice!")
					}
					
					NavigationLink(destination: MeetingGameView()) {
						Image(systemName: "cup.and.saucer.fill")
							.foregroundStyle(Color.green)
						Text("Let's Coffee!")
					}
				}
			} //MARK: END OF LIST
			
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
			
			.navigationTitle("Community")
		} //MARK: END OF NAVIGATION STACK
		
		
    }
}

#Preview {
    CommunityTabView()
}

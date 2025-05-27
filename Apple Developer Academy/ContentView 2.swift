//
//  ContentView.swift
//  Apple Developer Academy
//
//  Created by Alistair Albus Pines de Montmollin on 2025-01-30.
//

import SwiftUI
import SwiftData

struct ContentViewOLD: View {

    var body: some View {
       
		NavigationStack {
			
			List {
				
				NavigationLink(destination: WelcomeGuideView()) {
					HStack{
						Image(systemName: "house.fill")
							.foregroundStyle(Color.green)
						Text("Home")
					}
					
				}
				

				
	
				Section(header: Text("Academy")) {
					
					
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
				
				
				
				Section(header: Text("Bureaucracy Crap"), footer: Text("Don't cheat!")) {
					NavigationLink(destination: AttendanceView()) {
						Image(systemName: "person.fill.checkmark")
							.foregroundStyle(Color.red)
						Text("Attendance")
					}
				}
				
				Section(header: Text("Hogwarts")) {
					NavigationLink(destination: WelcomeGuideView()) {
						HStack{
							Image(systemName: "wind")
								.foregroundStyle(Color.yellow)
							Text("The Ghost of Steve Jobs")
						}
						
					}
					
					NavigationLink(destination: WelcomeGuideView()) {
						HStack{
							Image(systemName: "hourglass")
								.foregroundStyle(Color.yellow)
							Text("House Points")
						}
						
					}
					NavigationLink(destination: WelcomeGuideView()) {
						HStack{
							Image(systemName: "house.lodge.fill")
								.foregroundStyle(Color.yellow)
							Text("Houses")
						}
					}
					NavigationLink(destination: WelcomeGuideView()) {
						HStack{
							Image(systemName: "figure.fencing")
								.foregroundStyle(Color.yellow)
							Text("Dumbledore's Army")
						}
					}
				} // MARK: END OF SECTION HOGWARTS
				
				
				Section(header: Text("Community")) {
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
				
				
				
				Section(header: Text("Food"), footer: Text("Don't forget to eat!")) {
					NavigationLink(destination: LunchCardView()) {
						Image(systemName: "fork.knife")
							.foregroundStyle(Color.orange)
						Text("Lunch Card")
					}
					
					NavigationLink(destination: CoffeeMachineView()) {
						Image(systemName: "wallet.bifold.fill")
							.foregroundStyle(Color.orange)
						Text("Coffee Machine")
					}
				}

				Section(header: Text("Other crap"), footer: Text("Boring crap.")) {
					NavigationLink(destination: AuthenticationView()) {
						Image(systemName: "key.fill")
							.foregroundStyle(Color.teal)
						Text("Authentication")
					}
					
					NavigationLink(destination: AuthenticationView()) {
						Image(systemName: "gear")
							.foregroundStyle(Color.teal)
						Text("Settings")
					}
				} // MARK: END OF OTHER CRAP SECTION
			} // MARK: END OF LIST
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
			}
			
		} // MARK: END OF NAVIGATION STACK
		
            
    } //MARK: END OF BODY
}

#Preview {
	ContentViewOLD()
}

//
//  HogwartsTabView.swift
//  Apple Developer Academy
//
//  Created by Alistair Albus Pines de Montmollin on 2025-02-27.
//

import SwiftUI

struct HogwartsTabView: View {
    var body: some View {
		NavigationStack {
			
			
			List {
				Section(header: Text("")) {
					NavigationLink(destination: WelcomeGuideView()) {
						HStack{
							Image(systemName: "wind")
								.foregroundStyle(Color.yellow)
							Text("The Ghost of Steve")
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
			} //MARK: END OF LIST
			.navigationTitle("Hogwarts")
			
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
		} //MARK: END OF NAVIGATION STACK
	} //MARK: END OF BODY
}

#Preview {
    HogwartsTabView()
}

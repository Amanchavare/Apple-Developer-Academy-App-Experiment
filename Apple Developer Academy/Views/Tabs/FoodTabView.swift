//
//  FoodTabView.swift
//  Apple Developer Academy
//
//  Created by Alistair Albus Pines de Montmollin on 2025-02-27.
//

import SwiftUI

struct FoodTabView: View {
    var body: some View {
		NavigationStack {
			List {
				Section(header: Text(""), footer: Text("Don't forget to eat!")) {
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
				} //MARK: END OF SECTION
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
			.navigationTitle("Food")
		} //MARK: END OF NAVIGATION STACK
    } //MARK: END OF BODY
}

#Preview {
    FoodTabView()
}

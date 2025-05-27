//
//  ProfileView.swift
//  Apple Developer Academy
//
//  Created by Alistair Albus Pines de Montmollin on 2025-02-05.
//

import SwiftUI

struct ProfileView: View {
	@State private var currentIndex = 2
	let images = ["ProfilePictureExample1", "ProfilePictureExample2", "ProfilePictureExample3", "ProfilePictureExample4"]
	
	@State private var notes: String = "I am a cactus!"
	
	
    var body: some View {
		
		ZStack {
			LinearGradient(colors: [Color.gradiantColorStart, Color.gradiantColorEnd], startPoint: .top, endPoint: .bottom)
				.ignoresSafeArea(.all)
			
			// NavigationStack {
				
				ScrollView {
					
					VStack(spacing: 40) {
						ZStack {
							
							
//							UnevenRoundedRectangle(topLeadingRadius: 30, topTrailingRadius: 30)
//								.fill(Color.white)
//								.shadow(radius: 3)
//								.padding(5)
							
							VStack { //Card Content
								VStack(spacing: 8) {
									VStack(spacing: -3) {
										Text("Names")
											.font(.caption2)
											.fontWeight(.bold)
											.textCase(.uppercase)
											.opacity(0.4)
										
										Text("Alistair Albus")
											.font(.largeTitle)
											.fontWeight(.bold)
									}
									
									
									VStack(spacing: -3) {
										Text("Surnames")
											.font(.caption2)
											.fontWeight(.bold)
											.textCase(.uppercase)
											.opacity(0.4)
										
										Text("Pines de Montmollin")
											.font(.largeTitle)
											.fontWeight(.bold)
									}
								}
								
								
								
								ScrollView(.horizontal, showsIndicators: false) {
									HStack{
										Image("ProfilePictureExample1")
											.resizable()
											.scaledToFit()
											.frame(height: 230)
										Image("ProfilePictureExample2")
											.resizable()
											.scaledToFit()
											.frame(height: 230)
										Image("ProfilePictureExample3")
											.resizable()
											.scaledToFit()
											.frame(height: 230)
										Image("ProfilePictureExample4")
											.resizable()
											.scaledToFit()
											.frame(height: 230)
									}.padding(.vertical, 30)
								}
								
								VStack(spacing: 30) {
									
									VStack(spacing: 10) {
										Text("Developer: ").fontWeight(.bold) + Text("Advanced")
										Text("Designer: ").fontWeight(.bold) + Text("Intermediate")
										Text("Business: ").fontWeight(.bold) + Text("Beginner")
									}
									
									
									
									
									
									
									
									
									
									VStack(spacing: 10) {
										Text("Nationality: ").fontWeight(.bold) + Text("Swiss").foregroundStyle(.blue) + Text(", ") + Text("Italian").foregroundStyle(.blue)
										Text("Gender: ").fontWeight(.bold) + Text("Male").foregroundStyle(.blue)
										
									}
								} //MARK: END OF VSTACK
								//.padding(.horizontal, 20)
								
								
								
								
								
							} //MARK: VSTACK END
							.padding(.top, 40)
							//.padding(5)
						} //MARK: END OF ZSTACK FOR UPPER CARD
						
						
						ZStack {
							UnevenRoundedRectangle(bottomLeadingRadius: 30, bottomTrailingRadius: 30)
								.fill(Color(.systemGroupedBackground))
								.shadow(radius: 3)
								//.padding(5)
//								.mask {
//									Rectangle().offset(y: 3)
//								}
							
							
							VStack { //Card Content
								VStack(spacing: 30) {
									Text("All the information below is optional")
										.font(.headline)
									
									//BIO
									VStack(spacing: -10) {
										Text("Bio")
										TextEditor(text: $notes)
											.scrollContentBackground(.hidden) // Hide the default background
											.frame(height: 100)
											.background(
												RoundedRectangle(cornerRadius: 8)
													.stroke(Color.gray.opacity(0.1), lineWidth: 2) // Use lighter gray with opacity
													.fill(Color.black.opacity(0.02))
											)
											.padding(15)
									} //MARK: END OF BIO
									
									Text("I speak fluently these languages:\n").fontWeight(.bold) + Text("English").foregroundStyle(.blue) + Text(", ") + Text("French").foregroundStyle(.blue) + Text(", ") + Text("Italian").foregroundStyle(.blue)
									
									VStack(spacing: 10) {
										Text("Nickname: ").fontWeight(.bold) + Text("You can call me Alistair or Albus, whichever you prefer!")
										Text("Email: ").fontWeight(.bold) + Text("kiwi@titanic.kiwi")
										Text("University Email: ").fontWeight(.bold) + Text("amontmollin24@fed.idserve.net")
										Text("Phone: ").fontWeight(.bold) + Text("+41 79 521 58 15")
										Text("Italian Phone: ").fontWeight(.bold) + Text("+39 344 5367870")
										Text("Whatsapp Phone: ").fontWeight(.bold) + Text("+41 79 521 58 15")
										Text("Name in original script: ").foregroundStyle(.gray).fontWeight(.bold) + Text("")
									}
										
									
									
									
									Text("I want to work mostly as a: ").fontWeight(.bold) + Text("Designer").foregroundStyle(.blue) + Text(" + ") + Text("Developer").foregroundStyle(.blue)
									
									
									VStack(spacing: 10) {
										Text("I am interested in:").fontWeight(.bold)
										
										HStack {
											Button("VR") {
												
											}
											Text(",")
											Button("AR") {
												
											}
											Text(",")
											Button("Games") {
												
											}
											Text(",")
											Button("3D Graphics") {
												
											}
											Text(",")
											Button("Spatial Computing") {
												
											}
										}
									}
									
									
									
									VStack(spacing: 10) {
										Text("I want to work more on these platforms:").fontWeight(.bold)
										HStack {
											Button("macOS") {
												
											}
											Text(",")
											Button("visionOS") {
												
											}
											Text(",")
											Button("iPadOS") {
												
											}
										}
									}
									
									
									
									VStack(spacing: 10) {
										Text("My links:").fontWeight(.bold)
										
										Button("Instagram: TitanicKiwi") {
											
										}
										
										Button("LinkedIn: TitanicKiwi") {
											
										}
										
										Button("Website: titanic.kiwi") {
											
										}
										
										Button("Discord: TitanicKiwi") {
											
										}
									}
								} //MARK: END OF VSTACK
								.padding(.horizontal, 20)
								
								
								
								
								
							} //MARK: VSTACK END
							.padding(.vertical, 30)
							//.padding(5)
						} //MARK: END OF ZSTACK FOR BOTTOM CARD
					}
					
					
					
					
					
					//.padding(8)
				}
				
				
				
				
				//.navigationTitle("Alistair Albus")
			//} //MARK: NAVIGATION STACK END
		}
		
		
      
    }
}

#Preview {
    ProfileView()
}



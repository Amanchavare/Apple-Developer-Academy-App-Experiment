//
//  HomeTabView.swift
//  Apple Developer Academy
//
//  Created by Alistair Albus Pines de Montmollin on 2025-02-27.
//

import SwiftUI
import AVKit

struct HomeTabView: View {
	
	@State var player = AVPlayer(url: Bundle.main.url(forResource: "welcome", withExtension: "mp4")!)
	@State var isPlaying: Bool = false
	
	
	@State var showingBottomSheet = false
	
	
	
    var body: some View {
		NavigationStack {
			Text("Welcome, Welcome, Welcome!")
			ZStack {
				VideoPlayer(player: player)
					.frame(height: 173)
					.padding(12)
				
				if !isPlaying {
					Button {
						player.play()
						isPlaying = true
					} label: {
						Image(systemName: isPlaying ? "" : "play")
							.resizable()
							.foregroundStyle(.white)
							.frame(width: 50, height: 50)
							.padding()
						
					} //MARK: END OF LABEL
				} //MARK: END OF IF
			} //MARK: END OF ZSTACK
			
			
			List {
				Section(header: Text("Bureaucracy Crap"), footer: Text("Don't cheat!")) {
					NavigationLink(destination: AttendanceView()) {
						Image(systemName: "person.fill.checkmark")
							.foregroundStyle(Color.red)
						Text("Attendance")
					}
				}
			}
			
			
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
					
					
					Button(action: {showingBottomSheet.toggle()}) {
						Image("ProfilePictureExample1Cropped")
							.resizable()
							.scaledToFill()
							.frame(width: 32, height: 32)
							.clipShape(Circle())
					} .sheet(isPresented: $showingBottomSheet) {
						ProfileView()
							.presentationCornerRadius(65)
					}

					
					
				}
			} //MARK: END OF TOOLBAR
		}
		
		
		
    }
}

#Preview {
    HomeTabView()
}

//
//  WelcomeGuideView.swift
//  Apple Developer Academy
//
//  Created by Alistair Albus Pines de Montmollin on 2025-02-04.
//

import SwiftUI
import AVKit

struct WelcomeGuideView: View {
	
	
	@State var player = AVPlayer(url: Bundle.main.url(forResource: "welcome",
													  withExtension: "mp4")!)
	@State var isPlaying: Bool = false
	
    var body: some View {
		NavigationStack {
			Text("Welcome, Welcome, Welcome!")
			ZStack {
				VideoPlayer(player: player)
					.frame(height: 220)
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
			
			.navigationTitle("Welcome Guide")
		}
        
		
		
		Image("Welcome")
    }
}

#Preview {
    WelcomeGuideView()
}

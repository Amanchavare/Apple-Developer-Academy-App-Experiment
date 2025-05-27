//
//  HelpView.swift
//  Apple Developer Academy
//
//  Created by Alistair Albus Pines de Montmollin on 2025-02-04.
//

import SwiftUI

struct HelpView: View {
	
    var body: some View {
		NavigationStack {
			Text("Ask a Classmate")
			Text("Ask a Mentor")
			Text("Ask the Desk") //can just forward to academy email
			
				.navigationTitle("Ask for Help")
		}
		
    }
}

#Preview {
    HelpView()
}

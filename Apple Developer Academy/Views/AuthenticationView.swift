//
//  AuthenticationView.swift
//  Apple Developer Academy
//
//  Created by Alistair Albus Pines de Montmollin on 2025-02-04.
//

import SwiftUI

struct AuthenticationView: View {
	var body: some View {
		
		NavigationStack {
			Text("Why do we need this? \n Just use passkeys.")
			
				.navigationTitle("Authentication")
		}
	}
		
}

#Preview {
    AuthenticationView()
}

//
//  SettingsTabView.swift
//  Apple Developer Academy
//
//  Created by Alistair Albus Pines de Montmollin on 2025-02-27.
//

import SwiftUI

struct SettingsTabView: View {
    var body: some View {
		NavigationStack {
			List {
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
			}
		}
    }
}

#Preview {
    SettingsTabView()
}

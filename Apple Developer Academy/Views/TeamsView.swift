//
//  TeamsView.swift
//  Apple Developer Academy
//
//  Created by Alistair Albus Pines de Montmollin on 2025-02-05.
//

import SwiftUI
import SwiftData

struct TeamsView: View {
	@Environment(\.modelContext) private var modelContext
	@Query private var items: [Item]
	
	var body: some View {
		NavigationSplitView {
			
			
			Button("Help me form a new team!") {
				/*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/ /*@END_MENU_TOKEN@*/
			}
			.font(.title2)
			.buttonStyle(.borderedProminent)
			.clipShape(Capsule())
			.padding()
			
			List {
				ForEach(items) { item in
					NavigationLink {
						Text("Item at \(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))")
					} label: {
						Text(item.timestamp, format: Date.FormatStyle(date: .numeric, time: .standard))
					}
				}
				.onDelete(perform: deleteItems)
			}
			.toolbar {
				ToolbarItem(placement: .navigationBarTrailing) {
					EditButton()
				}
				ToolbarItem {
					Button(action: addItem) {
						Label("Add Item", systemImage: "plus")
					}
				}
			} .navigationTitle("People")
		} detail: {
			Text("Select an item")
		}
	}
	
	private func addItem() {
		withAnimation {
			let newItem = Item(timestamp: Date())
			modelContext.insert(newItem)
		}
	}
	
	private func deleteItems(offsets: IndexSet) {
		withAnimation {
			for index in offsets {
				modelContext.delete(items[index])
			}
		}
	}
}

#Preview {
    TeamsView()
		.modelContainer(for: Item.self, inMemory: true)
}

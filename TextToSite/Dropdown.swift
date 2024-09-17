//
//  Dropdown.swift
//  TextToSite
//
//  Created by Shobhakar Tiwari on 9/16/24.
//
import SwiftUI
// Dropdown view for showing links
struct DropdownView: View {
    let items: [String]
    let onItemSelected: (String) -> Void

    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ForEach(items, id: \.self) { item in
                dropdownButton(for: item)
                Divider()
            }
        }
        .background(Color(.systemBackground))
        .cornerRadius(10)
        .shadow(color: .black.opacity(0.1), radius: 5, x: 0, y: 5)
        .padding(.horizontal)
    }

    private func dropdownButton(for item: String) -> some View {
        Button(action: {
            onItemSelected(item)
        }) {
            HStack {
                Image(systemName: "link")
                    .foregroundColor(.blue)
                Text(item)
                    .foregroundColor(.primary)
            }
            .padding(.vertical, 12)
            .padding(.horizontal)
            .frame(maxWidth: .infinity, alignment: .leading)
        }
        .buttonStyle(PlainButtonStyle())
    }
}


//
//  ContentView.swift
//  TextToSite
//
//  Created by Shobhakar Tiwari on 9/16/24.
//

import SwiftUI

// Content view with loading indicator and WebView
struct ContentView: View {
    @State private var searchText = ""
    @State private var dropdownItems: [String] = []
    @State private var selectedURL: URL?
    @State private var showWebView = false
    @State private var isLoading = false  // Track loading state

    var body: some View {
        VStack(spacing: 0) {
            headerView
            searchTextField
            if !dropdownItems.isEmpty {
                dropdownSection
            }
            Spacer()
        }
        .sheet(isPresented: $showWebView) {
            webViewSection
        }
    }
}

extension ContentView {
    // MARK: - Header View
    private var headerView: some View {
        VStack(spacing: 8) {
            Text("Text To Web")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Text("Convert text to clickable web links instantly")
                .font(.subheadline)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
        }
        .padding(.top, 50)
    }
    
    // MARK: - Search TextField
    private var searchTextField: some View {
        TextField("Enter text here", text: $searchText, onCommit: addToDropdown)
            .font(.headline)
            .padding()
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal)
            .padding(.top, 20)
    }

    // MARK: - Dropdown Section
    private var dropdownSection: some View {
        DropdownView(items: dropdownItems, onItemSelected: { item in
            if let url = URL(string: item) {
                selectedURL = url
                showWebView = true
            }
        })
        .transition(.move(edge: .top))
        .animation(.spring(), value: dropdownItems)
    }

    // MARK: - WebView Section
    private var webViewSection: some View {
        VStack {
            if isLoading {
                ProgressView("Loading...")
                    .padding()
            }
            if let url = selectedURL {
                WebView(url: url, isLoading: $isLoading)
            }
        }
    }

    // MARK: - Function to Add to Dropdown
    private func addToDropdown() {
        if !searchText.isEmpty {
            let newItem = "http://\(searchText).com"
            if !dropdownItems.contains(newItem) {
                dropdownItems.append(newItem)
            }
            searchText = ""
        }
    }
}

#Preview {
    ContentView()
}

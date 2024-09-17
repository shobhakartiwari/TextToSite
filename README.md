# Text To Web Converter

A simple SwiftUI app that converts user input into clickable web links and displays them in a dropdown list. The app also allows users to open the selected URL in a WebView.

## Features
- Convert any entered text to a clickable web link.
- Dropdown display of clickable links generated from user input.
- Open URLs in a WebView within the app.
- Loading indicator while the web page is loading.

## Screenshots

### Dropdown and URL List View
![Dropdown and URL List View](./Simulator%20Screenshot%20-%20iPhone%2016%20Pro%20-%202024-09-16%20at%2023.52.25.png)

### WebView Loading the URL
![WebView Loading the URL](./Simulator%20Screenshot%20-%20iPhone%2016%20Pro%20-%202024-09-16%20at%2023.52.31.png)

## How It Works

1. Enter any text (for example, "Google") into the input field.
2. The app automatically appends "http://" to the entered text and displays it as a clickable link in a dropdown.
3. Select a link from the dropdown to open it in the embedded WebView.
4. A loading indicator is displayed while the web page loads.

## Getting Started

### Prerequisites

- Xcode 14 or later.
- Swift 5.7+.
- iOS 15.0 or later.

### Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/text-to-web-converter.git

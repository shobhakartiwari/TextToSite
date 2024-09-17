# Text To Web Converter

A simple SwiftUI app that converts user input into clickable web links and displays them in a dropdown list. The app also allows users to open the selected URL in a WebView.

## Features
- Convert any entered text to a clickable web link.
- Dropdown display of clickable links generated from user input.
- Open URLs in a WebView within the app.
- Loading indicator while the web page is loading.

## Screenshots

### Dropdown and URL List View
<img src="https://github.com/user-attachments/assets/7ff2cacf-1e2a-4a6d-9ea8-22a5f6733138" alt="Dropdown and URL List View" width="400"/>

### WebView Loading the URL
<img src="https://github.com/user-attachments/assets/6e34eee3-46ea-405c-82f3-a6e367f2099c" alt="WebView Loading the URL" width="400"/>


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

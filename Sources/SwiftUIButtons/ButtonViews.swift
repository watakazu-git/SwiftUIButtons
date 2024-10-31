import SwiftUI

// MARK: - Sample

@available(iOS 18.0, macOS 14.0, *)
public struct SecondaryButton: View {
    var text: String
    var action: () -> Void
    
    public init(text: String, action: @escaping () -> Void) {
        self.text = text
        self.action = action
    }

    public var body: some View {
        Button(action: action) {
            Text(text)
                .foregroundStyle(.blue)
                .padding()
                .background(.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 16)
                        .stroke(.blue, lineWidth: 2)
                )
        }
    }
}

@available(iOS 18.0, macOS 14.0, *)
public struct OutlineButton: View {
    var text: String
    var action: () -> Void
    
    public init(text: String, action: @escaping () -> Void) {
        self.text = text
        self.action = action
    }
    
    public var body: some View {
        Button(action: action) {
            Text(text)
                .foregroundStyle(.red)
                .padding()
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(.blue, lineWidth: 1)
                )
        }
    }
}

@available(iOS 18.0, macOS 14.0, *)
public struct IconButton: View {
    var icon: Image
    var action: () -> Void

    public init(icon: Image, action: @escaping () -> Void) {
        self.icon = icon
        self.action = action
    }

    public var body: some View {
        Button(action: action) {
            icon
                .foregroundStyle(.yellow)
                .padding()
                .background(.white)
                .clipShape(RoundedRectangle(cornerRadius: 8))
                .overlay(
                    RoundedRectangle(cornerRadius: 8)
                        .stroke(.yellow, lineWidth: 1)
                )
        }
    }
}

// MARK: - Material Design

@available(iOS 18.0, macOS 14.0, *)
public struct PrimaryButton: View {
    let text: String
    let action: () -> Void

    let textColor: Color
    let backgroundColor: Color

    public init(text: String, action: @escaping () -> Void, textColor: Color, backgroundColor: Color) {
        self.text = text
        self.action = action
        self.textColor = textColor
        self.backgroundColor = backgroundColor
    }

    public var body: some View {
        Button(action: action) {
            Text(text)
                .foregroundStyle(textColor)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 8)
                        .foregroundStyle(backgroundColor)
                )

        }
    }
}

// TODO: Change Button Design
@available(iOS 18.0, macOS 14.0, *)
public struct ElevatedButton: View {
    let text: String
    let action: () -> Void

    var textColor: Color = Color(red: 0.41, green: 0.33, blue: 0.59)

    public init(text: String, action: @escaping () -> Void) {
        self.text = text
        self.action = action
    }

    public var body: some View {
        Button(action: action) {
            Text(text)
                .foregroundStyle(textColor)
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 32)
                        .foregroundStyle(.white)
                        .shadow(radius: 2, y: 4)
                )
        }
    }
}

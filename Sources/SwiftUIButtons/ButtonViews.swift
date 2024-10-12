import SwiftUI

@available(iOS 18.0, macOS 14.0, *)
public struct PrimaryButton: View {
    var text: String
    var action: () -> Void

    public init(text: String, action: @escaping () -> Void) {
        self.text = text
        self.action = action
    }

    public var body: some View {
        Button(action: action) {
            Text(text)
                .foregroundStyle(.white)
                .padding()
                .background(.blue)
                .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }
}

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
                        .stroke(.blue, lineWidth: 1)
                )
        }
    }
}

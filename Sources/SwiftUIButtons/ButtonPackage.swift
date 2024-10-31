import SwiftUI

@available(iOS 18.0, macOS 14.0, *)
public struct ButtonPackage {

    // MARK: - Sample

    @MainActor
    public static func secondaryButton(text: String, action: @escaping () -> Void) -> some View {
        SecondaryButton(text: text, action: action)
    }

    @MainActor
    public static func outlineButton(text: String, action: @escaping () -> Void) -> some View {
        OutlineButton(text: text, action: action)
    }

    @MainActor
    public static func iconButton(icon: Image, action: @escaping () -> Void) -> some View {
        IconButton(icon: icon, action: action)
    }

    // MARK: - Material Design

    @MainActor
    public static func primaryButton(text: String, action: @escaping () -> Void, textColor: Color = .white, backgroundColor: Color = .blue) -> some View {
        PrimaryButton(text: text, action: action, textColor: textColor, backgroundColor: backgroundColor)
    }

    @MainActor
    public static func elevatedButton(text: String, action: @escaping () -> Void, textColor: Color = Color(red: 0.41, green: 0.33, blue: 0.59), backgroundColor: Color = .white, systemName: String = "") -> some View {
        ElevatedButton(text: text, action: action, textColor: textColor, backgroundColor: backgroundColor, systemName: systemName)
        }

    @MainActor
    public static func filledButton(text: String, action: @escaping () -> Void, textColor: Color = Color(red: 0.41, green: 0.33, blue: 0.59), backgroundColor: Color = .white) -> some View {
        FilledButton(text: text, action: action, textColor: textColor, backgroundColor: backgroundColor)
        }
}

import SwiftUI

@available(iOS 18.0, macOS 14.0, *)
public struct ButtonPackage {
//    @MainActor
//    public static func primaryButton(text: String, action: @escaping () -> Void) -> some View {
//        PrimaryButton(text: text, action: action)
//    }

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

    //MARK: - Material Design

    @MainActor
    public static func primaryButton(text: String, action: @escaping () -> Void, textColor: Color = .white, backgroundColor: Color = .blue) -> some View {
        PrimaryButton(text: text, action: action, textColor: textColor, backgroundColor: backgroundColor)
    }

    @MainActor
        public static func elevatedButton(text: String, action: @escaping () -> Void) -> some View {
            ElevatedButton(text: text, action: action)
        }
}

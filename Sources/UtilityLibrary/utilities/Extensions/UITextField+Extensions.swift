import UIKit

public extension UITextField {
    
    // MARK: - Text
    
    func setCustomText(_ text: String?) {
        self.text = text
    }
    
    func customText() -> String? {
        return text
    }
    
    // MARK: - Placeholder
    
    func setCustomPlaceholder(_ placeholder: String?) {
        self.placeholder = placeholder
    }
    
    func customPlaceholder() -> String? {
        return placeholder
    }
    
    // MARK: - Text Color
    
    func setCustomTextColor(_ color: UIColor?) {
        textColor = color
    }
    
    func customTextColor() -> UIColor? {
        return textColor
    }
    
    // MARK: - Font
    
    func setCustomFont(_ font: UIFont?) {
        self.font = font
    }
    
    func customFont() -> UIFont? {
        return font
    }
    
    // MARK: - Border Style
    
    func setCustomBorderStyle(_ style: UITextField.BorderStyle) {
        borderStyle = style
    }
    
    func customBorderStyle() -> UITextField.BorderStyle {
        return borderStyle
    }
    
    // MARK: - Clear Button Mode
    
    func setCustomClearButtonMode(_ mode: UITextField.ViewMode) {
        clearButtonMode = mode
    }
    
    func customClearButtonMode() -> UITextField.ViewMode {
        return clearButtonMode
    }
    
    // MARK: - Keyboard Type
    
    func setCustomKeyboardType(_ type: UIKeyboardType) {
        keyboardType = type
    }
    
    func customKeyboardType() -> UIKeyboardType {
        return keyboardType
    }
    
    // MARK: - Secure Text Entry
    
    func setCustomSecureTextEntry(_ isSecure: Bool) {
        isSecureTextEntry = isSecure
    }
    
    func customSecureTextEntry() -> Bool {
        return isSecureTextEntry
    }
}
